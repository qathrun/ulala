<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	
	function __construct(){
		parent::__construct();		
		$this->load->model('Fungsi_model');
	}

	public function index()
	{
		$data['wisata'] = $this->Fungsi_model->ambil_data()->result();
		//$this->load->view('home', $data);
		$this->load->view('header');
		$this->load->view('home');
		$this->load->view('footer');
		
	}
	function pricing(){
		$data['wisata'] = $this->Fungsi_model->ambil_data()->result();
		$this->load->view('header');
		$this->load->view('pricing', $data);
		$this->load->view('footer');
		
	}
	
	function services($Kode_Paket)
	{	
		$where = array('Kode_Paket' => $Kode_Paket);
		$data['wisata'] = $this->Fungsi_model->read_data($where,'wisata')->result();
		$this->load->view('form', $data);
		$this->load->view('header');
		$this->load->view('footer');		
	}
	
		function verif($Kode_Paket)
	{	
		$where = array('Kode_Paket' => $Kode_Paket);
		$data['wisata'] = $this->Fungsi_model->read_data($where,'wisata')->result();
		$this->load->view('verif', $data);
		
		$this->load->view('header');
		//$this->load->view('verif');
		$this->load->view('footer');		
	}
	
		function lihatdetil($Kode_Paket)
	{
		$where = array('Kode_Paket' => $Kode_Paket);
		$data['wisata'] = $this->Fungsi_model->read_data($where,'wisata')->result();
		$this->load->view('lihatdetil', $data);
	}
	
		function tambah(){
		$Kode_Paket = $this->input->post('Kode_Paket');
		$Nama_Paket = $this->input->post('Nama_Paket');
		$NO_KTP = $this->input->post('NO_KTP');
		$Request_Tambahan = $this->input->post('Request_Tambahan');

 
		$data = array(
			'Kode_Paket' => $Kode_Paket,
			'Nama_Paket' => $Nama_Paket,
			'NO_KTP' => $NO_KTP,
			'Request_Tambahan' => $Request_Tambahan
			);
		$this->Fungsi_model->input_data($data,'order');
		redirect('welcome/thanks');
	}
	
	function thanks(){
		$this->load->view('header');
		$this->load->view('thanks');
		$this->load->view('footer');
	}
	
	function hasilsearch(){
		$this->load->view('hasilsearch');
	}
}
