<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Front extends CI_Controller {

	public function index()
	{
		$this->load->view('front_end/index');
	}

	public function contact()
	{
		$this->load->view('front_end/contact');
	}
	public function login()
	{
		$this->load->view('front_end/login');
	}
	public function signup()
	{
		$this->load->view('front_end/signup');
	}
	public function forget_pwd()
	{
		$this->load->view('front_end/forget_pwd');
	}

	public function about()
	{
		$this->load->view('front_end/about');
	}

	public function service()
	{
		$this->load->view('front_end/service');
	}

	public function gallery()
	{
		$this->load->view('front_end/gallery');
	}

	public function contact_action()
	{
		$this->load->library('mail');

		$name = $this->input->post('name');
		$phone = $this->input->post('phone');
		$email = $this->input->post('email');
		$msg = $this->input->post('msg');

		$this->form_validation->set_rules('name', 'Name', 'trim|required');
		$this->form_validation->set_rules('phone', 'Phone', 'trim|required|min_length[10]|max_length[10]');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('msg', 'Message', 'trim|required');

		if ($this->form_validation->run()== TRUE) {
			
			$message = "<table style='border-collapse: collapse; border: 1px solid black;'>
				<tr style='border: 1px solid black;'>
				  	<td style='border: 1px solid black;'><b> Name : </b></td>
					<td style='border: 1px solid black;'>". $name ."</td>
				</tr>

				<tr>
					<td style='border: 1px solid black;'><b> Email : </b></td>
					<td style='border: 1px solid black;'>". $email ."</td>
				</tr>

				<tr>
					<td style='border: 1px solid black;'><b> Phone : </b></td>
					<td style='border: 1px solid black;'>". $phone ."</td>
				</tr>

				<tr>
					<td style='border: 1px solid black;'><b> Message : </b></td>
					<td style='border: 1px solid black;'>". $msg ."</td>
				</tr>
			</table>";

			$this->mail->send_mail($this->input->post('email'), 'Sparzone Contact', $message, '', '');

			$this->session->set_flashdata('error', 'Successfuliy Submit');
			return redirect('contact-us');
		}
		else{

			$this->session->set_flashdata('error', validation_errors());
			return redirect('contact-us');
		}
	}
}
