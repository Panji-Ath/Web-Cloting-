<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kategori extends CI_Controller
{
    // load model
    public function __construct()
    {
        parent::__construct();
        $this->load->model('kategori_model');
        // proteksi halaman
        $this->simple_login->cek_login();
    }
    // data kategori
    public function index()
    {
        $kategori = $this->kategori_model->listing();
        $data = array(
            'title'    =>    'Data Kategori Produk',
            'kategori'    =>    $kategori,
            'isi'    =>    'admin/kategori/list'

        );
        $this->load->view('admin/layout/wrapper', $data, FALSE);
    }
    // tambah kategori
    public function tambah()
    {
        // validasi input
        $valid = $this->form_validation;
        $valid->set_rules(
            'nama_kategori',
            'Nama Kategori',
            'required|is_unique[kategori.nama_kategori]',
            array(
                'required'    =>    '%s harus diisi',
                'is_unique'    =>    '%s sudah ada. Buat kategori baru!'
            )
        );


        if ($valid->run() === FALSE) {
            // end validation



            $data = array(
                'title'    =>    'Tambah Kategori Produk',
                'isi'    =>    'admin/kategori/tambah'

            );
            $this->load->view('admin/layout/wrapper', $data, FALSE);

            // masuk database

        } else {
            $i = $this->input;
            $slug_kategori = url_title($this->input->post('nama_kategori'), 'dash', TRUE);
            $data = array(
                'slug_kategori'    =>    $slug_kategori,
                'nama_kategori'    =>    $i->post('nama_kategori'),
                'urutan'    =>    $i->post('urutan')
            );
            $this->kategori_model->tambah($data);
            $this->session->set_flashdata('sukses', 'Data telah ditambah');
            redirect(base_url('admin/kategori'), 'refresh');
        }
        // end masuk database
    }
    public function edit($id_kategori)
    {
        $kategori = $this->kategori_model->detail($id_kategori);

        // validasi input
        $valid = $this->form_validation;
        $valid->set_rules(
            'nama_kategori',
            'Nama Kategori',
            'required',
            array('required'    =>    '%s harus diisi')
        );


        if ($valid->run() === FALSE) {
            // end validation


            $data = array(
                'title'    =>    'Edit Kategori Produk',
                'kategori'    =>    $kategori,
                'isi'    =>    'admin/kategori/edit'

            );
            $this->load->view('admin/layout/wrapper', $data, FALSE);

            // masuk database

        } else {
            $i = $this->input;
            $slug_kategori = url_title($this->input->post('nama_kategori'), 'dash', TRUE);
            $data = array(
                'id_kategori'    =>    $id_kategori,
                'slug_kategori'    =>    $slug_kategori,
                'nama_kategori'    =>    $i->post('nama_kategori'),
                'urutan'        =>    $i->post('urutan')
            );
            // $data = array('id_kategori'	=>	$id_kategori);
            $this->kategori_model->edit($data);
            $this->session->set_flashdata('sukses', 'Data berhasil diubah');
            redirect(base_url('admin/kategori'), 'refresh');
        }
        // end masuk database
    }

    // delete kategori
    public function delete($id_kategori)
    {
        $data = array('id_kategori'    =>    $id_kategori);
        $this->kategori_model->delete($data);
        $this->session->set_flashdata('sukses', 'Data telah dihapus');
        redirect(base_url('admin/kategori'), 'refresh');
    }
}

/* End of file Kategori.php */
/* Location: ./application/controllers/admin/Kategori.php */