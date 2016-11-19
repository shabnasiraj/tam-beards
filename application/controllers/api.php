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

		//$this->load->view('constants/header');
		if($text = $this->api->getText($lang,$qr_code)){

			$data['value'] = $text['ad_string'];
			//$this->load->view('constants/body',$data);

			echo $data['value'];

		}else{

			$data['value'] = "Sorry bro! No data found!";
			$this->load->view('constants/body',$data);
		}

		/*$this->load->view('constants/footer');*/
	}

	public function create(){

		$lang_id = $this->input->post("lang");
		$text 	 = $this->input->post("text");

		$this->api->incrementQR();

		if($this->api->insertAd($lang_id,$text))
			echo "Inserted";
		else
			echo "Not Inserted";
	}

}