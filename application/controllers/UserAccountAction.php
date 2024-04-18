<?php
/**
 * 
 */
class UserAccountAction extends CI_Controller
{
	
	public function __construct()
	{
		parent::__construct();
		if(!$this->session->userdata('userSess'))
		{
			return redirect('/');
		}
	}

	/*============= Update Profile============ */
	public function update_profile()
	{
		$id = $this->session->userdata['userSess']['id'];
		$name = $this->input->post('pname');
		$mobile = $this->input->post('pmobile');
		$email = $this->input->post('pemail');
		$gst = $this->input->post('gst');
		$postal = $this->input->post('ppostal');
		$country = $this->input->post('pcountry');
		$state = $this->input->post('pstate');
		$city = $this->input->post('pcity');
		$address = $this->input->post('paddress');
			$this->form_validation->set_rules('pname', 'Name', 'trim|required');
		$this->form_validation->set_rules('pmobile', 'Mobile', 'trim|required|min_length[10]|max_length[10]|numeric');
		$this->form_validation->set_rules('ppostal', 'Postal Code', 'trim|required|min_length[6]|max_length[6]|numeric');
		$this->form_validation->set_rules('pcountry', 'Country', 'trim|required');
		$this->form_validation->set_rules('pstate', 'State', 'trim|required');
		$this->form_validation->set_rules('pcity', 'City', 'trim|required');
		$this->form_validation->set_rules('paddress', 'Address', 'trim|required');
		if ($this->form_validation->run() == TRUE ) 
		{
			$data = [
				'name'=>$name,
             'pin_code'=>$postal,
             'country'=>$country,
             'state'=>$state,
             'city'=>$city,
             'address'=>$address,
             'complete_address'=>ucwords($address).','.$city.','.$state.' - '.$postal,
             'gst_no'=>$gst
			];
			if($this->Main_model->update('tbl_registration',['id'=>$id] ,$data))
			{
				 $this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible" style="font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-check-circle" aria-hidden="true"></i>
  </strong> <b>Profile updated successfully....</b>
  </div>');
        return redirect("user/dashboard/my-account");
			}
			
		} else {
			 $this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible" style="border:2px solid #721C24; color:red; font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-times-circle-o" aria-hidden="true"></i>
</strong> <b>'.validation_errors().'
  </b></div>');
  return redirect("user/dashboard/my-account");
		}
		
	}
	/*================ Update Profile Picture===========*/
	public function update_profileimage()
	{
		$img = $_FILES['pimg']['name'];
		$id = $this->session->userdata['userSess']['id'];
		if(!empty($img))
		{
			$old = single_row('tbl_registration',['id'=>$id],'profile_pic');
         	
			$a = explode('.', $img);
		 $config['file_name'] = $id.'-profile.'.end($a);
         $config['upload_path'] = './assets/uploads/profile/';
         $config['allowed_types'] = 'jpg|png|jpeg';
         $config['max_size']  = '1024';
         
         $this->upload->initialize($config);
         
         
         if ( ! $this->upload->do_upload('pimg')){
         		$this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible" style="border:2px solid #721C24; color:red; font-size:20px;"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong><i class="fa fa-times-circle-o" aria-hidden="true"></i></strong><b> '. $this->upload->display_errors().'</b></div>');
  return redirect("user/dashboard/my-account");	
         }
         else
         {
            ($old!=NULL)?unlink($config['upload_path'].$old):'';
         	$file_name = $this->upload->data('file_name');
         	$this->load->library('resize_image');	
                $this->resize_image->resize($config['upload_path'],$file_name,300,300);
         	
         	$arr = [
             'profile_pic'=> $file_name,
             'is_profile_pic'=>1
         	];
         	if($this->Main_model->update('tbl_registration',['id'=>$id],$arr))
         	{
         		$this->session->set_flashdata('error', '<div class="alert alert-success alert-dismissible" style="font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-check-circle" aria-hidden="true"></i>
  </strong> <b>Profile picture updated successfully....</b>
  </div>');
        return redirect("user/dashboard/my-account");
         	}
         }
		}else
		{
		$this->session->set_flashdata('error', '<div class="alert alert-danger alert-dismissible" style="border:2px solid #721C24; color:red; font-size:20px;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><i class="fa fa-times-circle-o" aria-hidden="true"></i>
</strong> <b>Please select profile picture
  </b></div>');
  return redirect("user/dashboard/my-account");	
		}
	}
	
	/*============== Delete============= */
	public function delete($type='' , $id = '')
	{
		if(isset($type) && isset($id))
		{
			switch ($type) {
				case 'wishlist':
					$this->Main_model->delete('tbl_wishlist',['wish_id'=>$id]);
					return redirect('user/dashboard/wishlist');
					break;
				
				default:
					# code...
					break;
			}
		}
	}


}