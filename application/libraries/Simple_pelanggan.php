<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Simple_pelanggan
{
    protected $CI;

    public function __construct()
    {
        $this->CI = &get_instance();

        // load data model user
        $this->CI->load->model('pelanggan_model');
    }

    // fungsi login
    public function login($email, $password)
    {
        // jika ada data user, maka create session login
        $check = $this->CI->pelanggan_model->login($email, $password);
        if ($check) {
            $id_pelanggan     =     $check->id_pelanggan;
            $nama_pelanggan =    $check->nama_pelanggan;

            // create session
            $this->CI->session->set_userdata('id_pelanggan', $id_pelanggan);
            $this->CI->session->set_userdata('nama_pelanggan', $nama_pelanggan);
            $this->CI->session->set_userdata('email', $email);
            // redirect ke halaman admin yang diproteksi
            redirect(base_url('dasbor'), 'refresh');
        } else {
            // jika username atau password salah maka harus login kembali
            $this->CI->session->set_flashdata('warning', 'username atau pasword salah');
            redirect(base_url('masuk'), 'refresh');
        }
    }

    // fungsi cek login
    public function cek_login()
    {
        // memeriksa apakah session sudah atau belum, jika belom alihkan ke halaman login
        if ($this->CI->session->userdata('email') == "") {
            $this->CI->session->set_flashdata('warning', 'Anda belum login');
            redirect(base_url('masuk'), 'refresh');
        }
    }

    // fungsi logout
    public function logout()
    {
        // menghapus semua session yang telah diset pada saat login
        $this->CI->session->unset_userdata('id_pelanggan');
        $this->CI->session->unset_userdata('nama_pelanggan');
        $this->CI->session->unset_userdata('email');
        // setelah session dihapus redirect ke login
        $this->CI->session->set_flashdata('sukses', 'Anda berhasil logout');
        redirect(base_url('masuk'), 'refresh');
    }
}

/* End of file Simple_pelanggan.php */
/* Location: ./application/libraries/Simple_pelanggan.php */
