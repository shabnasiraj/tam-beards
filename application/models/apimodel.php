<?php class ApiModel extends CI_Model{
	
	function __construct(){

		parent::__construct();

	}

	function getText($lang,$qr_code){

		/*$queryString = "select a.hack_language_id as ad_id, hack_language_name as ad_lang, hack_language_code as ad_lang_code, hack_qr_id as qr_code, hack_qr_ad from hack_qr_language_ads a inner join (select * from hack_language_list) b where a.hack_language_id = b.hack_language_id";*/

		/*$queryString = "select a.hack_qr_ad as ad_string from hack_qr_language_ads a, hack_language_list l, hack_qr_list q where a.hack_language_id = l.hack_language_id and q.hack_qr_id = a.hack_qr_id and a.hack_qr_id=".$qr_code;*/

		mysql_query ("set character_set_results='utf8'"); 

		$queryString = "select a.hack_qr_ad as ad_string, l.hack_language_code as code from hack_qr_language_ads a, hack_language_list l, hack_qr_list q where a.hack_language_id = l.hack_language_id and q.hack_qr_id = a.hack_qr_id and a.hack_qr_id=".$qr_code." and l.hack_language_code = '".$lang."'";

		/*$this->db->query("SET NAMES utf8");*/
		$result = $this->db->query($queryString);

		if($result->num_rows())
			return $result->row_array();
		return false;
	}


	function incrementQR(){

		$this->db->insert('hack_qr_list',array());

	}


	function insertAd($lang_id,$text){

		$qr_id = $this->getLatestQRId();
		$data = array(
						'hack_language_id'	=> $lang_id,
						'hack_qr_id'		=> $qr_id,	
						'hack_qr_ad'		=> $text	
				);

		return $this->db->insert('hack_qr_language_ads',$data);
	}


	function getLatestQRId(){

		$query = $this->db->query("SELECT hack_qr_id FROM table ORDER BY hack_qr_id DESC LIMIT 1");
		$id_array = $query->row_array();

		return $id_array['hack_qr_id'];

	}
}