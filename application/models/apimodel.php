<?php class ApiModel extends CI_Model{
	
	function __construct(){

		parent::__construct();

	}

	function getText($lang,$qr_code){

		mysql_query ("set character_set_results='utf8'"); 
		mysql_query("SET NAMES UTF8;");
		$queryString = "select a.hack_qr_ad as ad_string, l.hack_language_code as code from hack_qr_language_ads a, hack_language_list l, hack_qr_list q where a.hack_language_id = l.hack_language_id and q.hack_qr_id = a.hack_qr_id and a.hack_qr_id=".$qr_code." and l.hack_language_code = '".$lang."'";

		$result = $this->db->query($queryString);

		if($result->num_rows())
			return $result->row_array();
		return false;
	}


	function incrementQR(){

		$this->db->insert('hack_qr_list',array('rand'=>'random'));

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

		$query = $this->db->query("SELECT hack_qr_id FROM hack_qr_list ORDER BY hack_qr_id DESC LIMIT 1");
		$id_array = $query->row_array();

		return $id_array['hack_qr_id'];

	}


	function getLanguageList(){

		$this->db->select('hack_language_id, hack_language_name');
		$query = $this->db->get('hack_language_list');	
		
		if($query->num_rows())
			return $query->result_array();
		return false;
	}


}