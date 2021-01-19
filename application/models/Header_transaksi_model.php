<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Header_transaksi_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    // Listing all header_transaksi 
    public function listing()
    {
        $this->db->select('header_transaksi.*,
								pelanggan.nama_pelanggan,
							SUM(transaksi.jumlah) AS total_item');
        $this->db->from('header_transaksi');
        // join
        $this->db->join('transaksi', 'transaksi.kode_transaksi = header_transaksi.kode_transaksi', 'left');
        $this->db->join('pelanggan', 'pelanggan.id_pelanggan = header_transaksi.id_pelanggan', 'left');
        // end join
        $this->db->group_by('header_transaksi.id_header_transaksi');
        $this->db->order_by('id_header_transaksi', 'desc');
        $query = $this->db->get();
        return $query->result();
    }

    // listing all header transaksi dari pelanggan
    public function pelanggan($id_pelanggan)
    {
        $this->db->select('header_transaksi.*,
							SUM(transaksi.jumlah) AS total_item');
        $this->db->from('header_transaksi');
        $this->db->where('header_transaksi.id_pelanggan', $id_pelanggan);
        // join
        $this->db->join('transaksi', 'transaksi.kode_transaksi = header_transaksi.kode_transaksi', 'left');
        // end join
        $this->db->group_by('header_transaksi.id_header_transaksi');
        $this->db->order_by('id_header_transaksi', 'desc');
        $query = $this->db->get();
        return $query->result();
    }

    // Detail header_transaksi
    public function kode_transaksi($kode_transaksi)
    {
        $this->db->select('header_transaksi.*,
								pelanggan.nama_pelanggan,
								rekening.nama_bank AS bank,
								rekening.nomor_rekening,
								rekening.nama_pemilik,
							SUM(transaksi.jumlah) AS total_item');
        $this->db->from('header_transaksi');
        // join
        $this->db->join('transaksi', 'transaksi.kode_transaksi = header_transaksi.kode_transaksi', 'left');
        $this->db->join('pelanggan', 'pelanggan.id_pelanggan = header_transaksi.id_pelanggan', 'left');
        $this->db->join('rekening', 'rekening.id_rekening = header_transaksi.id_rekening', 'left');
        // end join
        $this->db->group_by('header_transaksi.id_header_transaksi');
        $this->db->where('transaksi.kode_transaksi', $kode_transaksi);
        $this->db->order_by('id_header_transaksi', 'desc');
        $query = $this->db->get();
        return $query->row();
    }

    // Detail header_transaksi
    public function detail($id_header_transaksi)
    {
        $this->db->select('*');
        $this->db->from('header_transaksi');
        $this->db->where('id_header_transaksi', $id_header_transaksi);
        $this->db->order_by('id_header_transaksi', 'desc');
        $query = $this->db->get();
        return $query->row();
    }

    // // header_transaksi sudah login
    // public function sudah_login($email,$nama_header_transaksi)
    // {
    // 	$this->db->select('*');
    // 	$this->db->from('header_transaksi');
    // 	$this->db->where('email', $email);
    // 	$this->db->where('nama_header_transaksi', $nama_header_transaksi);
    // 	$this->db->order_by('id_header_transaksi','desc');
    // 	$query = $this->db->get();
    // 	return $query->row();
    // }


    // // login header_transaksi
    // public function login($email, $password)
    // {
    // 	$this->db->select('*');
    // 	$this->db->from('header_transaksi');
    // 	$this->db->where(array ('email'	=> $email,
    // 							 'password'	=> SHA1($password)));
    // 	$this->db->order_by('id_header_transaksi','desc');
    // 	$query = $this->db->get();
    // 	return $query->row();	
    // }

    // tambah
    public function tambah($data)
    {
        $this->db->insert('header_transaksi', $data);
    }

    // edit
    public function edit($data)
    {
        $this->db->where('id_header_transaksi', $data['id_header_transaksi']);
        $this->db->update('header_transaksi', $data);
    }

    // delete
    public function delete($data)
    {
        $this->db->where('id_header_transaksi', $data['id_header_transaksi']);
        $this->db->delete('header_transaksi', $data);
    }
}

/* End of file Header_transaksi_model.php */
/* Location: ./application/models/Header_transaksi_model.php */