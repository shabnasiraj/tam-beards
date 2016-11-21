<?php class Index extends CI_Controller{
	

		public function __construct(){

			parent::__construct();
			$this->load->model('ApiModel','api');
		}


		public function index(){

			//Signup  page here
			$data['languageList'] = $this->api->getLanguageList();

			$this->api->incrementQR();
			$this->load->view('constants/header');
			$this->load->view('ad/body',$data);
			$this->load->view('constants/footer');


		}

		public function sample($qr_code){

			/*$this->load->view('constants/header');
			$this->load->view('qr/generator');
			$this->load->view('constants/footer');	
					*/

			$data["qr_code"] = $qr_code;
			$this->load->view('public_html/sample',$data);
		}
}