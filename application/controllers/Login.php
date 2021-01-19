<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

    //Halaman login
    public function index()
    {
        // validasi login
        $this->form_validation->set_rules(
            'username',
            'Username',
            'required',
            array('required'    =>    '%s harus diisi')
        );

        $this->form_validation->set_rules(
            'password',
            'Password',
            'required',
            array('required'    =>    '%s harus diisi')
        );
        if ($this->form_validation->run()) {
            $username = $this->input->post('username');
            $password = $this->input->post('password');

            // proses ke simple_login
            $this->simple_login->login($username, $password);
        }

        // end validasi


        $data = array('title'    =>    'Login Administrator');
        $this->load->view('login/list', $data, FALSE);
    }

    public function logout()
    {
        // ambil fungsi logout dari library simple_login
        $this->simple_login->logout();
    }
}

/* End of file Login.php */
/* Location: ./application/controllers/Login.php */