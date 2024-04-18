<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_panel extends CI_Controller {

	public function login()
	{
		$this->load->view('admin/login_panel');
	}

	public function login_action()
	{
		$this->form_validation->set_rules('user_id', 'User Id', 'trim|required');
		$this->form_validation->set_rules('password', 'User Id', 'trim|required');

		if ($this->form_validation->run()== FALSE) {
			
			$this->session->set_flashdata('error', validation_errors());
			redirect('login-panel');
		}
		else{

			$u_id = $this->input->post('user_id');
			$pass = $this->input->post('password');

			$user = $this->Main_model->login_panel_action($u_id, md5($pass));

			if($user)
			{
				$userdata = array(
					'id' => $user->id,
					'authenicated' => TRUE
				);

				$this->session->set_userdata('sessiondata', $userdata);
				//echo 'Success';
				return redirect('admin/dashboard');
			}
			else{

				$this->session->set_flashdata('error', 'Invalid User Id or Password');
				return redirect('admin');
			}
		}

	}

}
