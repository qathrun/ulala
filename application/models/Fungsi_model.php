<?php 
 
class Fungsi_model extends CI_Model{
	function ambil_data(){
		return $this->db->get('wisata');
	}
	
	function read_data($where,$table){		
	return $this->db->get_where($table,$where);
	}
	
	function input_data($data,$table){
		$this->db->insert($table,$data);
	} //simpan data ke db
	
	function simpan_data($where,$table){	
		return $this->db->get_where($table,$where);
	} //ngambil data

	function edit_data($where,$table){		
	return $this->db->get_where($table,$where);
}

	public function delete_data($Kode_Paket){
		return $this->db->delete('wisata', array('Kode_Paket'=>Kode_Paket));
	}
	public function delete($Kode_Paket){
		return $this->db->query("DELETE FROM wisata WHERE Kode_Paket = $Kode_Paket");
	}
	function hapus_data($where,$table){
	$this->db->where($where);
	$this->db->delete($table);
	}	
	
	function update_data($where,$data,$table){
		$this->db->where($where);
		$this->db->update($table,$data);
	}	
}
?>