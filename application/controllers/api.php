<?php class Api extends CI_Controller{
	
	public function __construct(){

		parent::__construct();
		$this->load->model('ApiModel','api');
	}

	public function index(){

		redirect('error');
	}

	// gets the query string from the url, 
	// the query string should have qr_id and language_id or language_short_code
	public function decode(){
		$lang 		=	$_GET['lang'];
		$qr_code	=	$_GET['qr_code'];
		
		if($text = $this->api->getText($lang,$qr_code)){
			$data['value'] = $text['ad_string'];
			echo mb_convert_encoding($data['value'],'HTML-ENTITIES','UTF-8');

		}else{		
			echo "No message of this type bro";
		}
	}

	public function create(){
		$lang_id = $this->input->post("lang");
		$text 	 = $this->input->post("text");
		if($this->api->insertAd($lang_id,$text))
			echo $this->api->getLatestQRId();
		else
			echo "Error: Not Inserted";
	}



}