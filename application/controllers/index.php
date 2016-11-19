<?php class Index extends CI_Controller{
	

		public function __construct(){

			parent::__construct();

		}


		public function index(){

			//Signup  page here

			$this->load->view('constants/header');
			$this->load->view('qr/generator');
			$this->load->view('constants/footer');


		}

		public function test(){

			echo "test";
		}
}