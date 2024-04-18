<?php 
	require_once('inc/head.php');
	require_once('inc/header.php');
	require_once('inc/left_sidebar.php');
?>

        <div class="page-body">

            <!-- Container-fluid starts-->
            <div class="container-fluid">
                <div class="page-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="page-header-left">
                                <h3>Edit Now</h3>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <ol class="breadcrumb pull-right">
                                <li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
                                <li class="breadcrumb-item">Dashboard</li>
                                <li class="breadcrumb-item active">Edit Password</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Container-fluid Ends-->

            <!-- Container-fluid starts-->
            <div class="container-fluid">
                <div class="card tab2-card">
                    <div class="card-body">
                    	<center><h4><?php
                    	if($this->session->flashdata('error'))
                    	{
                    		echo '<font color="red">'.$this->session->flashdata('error').'</font>';
                    	}
                    	?></h4></center>
                        <ul class="nav nav-tabs tab-coupon" id="myTab" role="tablist">
                            <li class="nav-item">
                            	<a class="nav-link active">Edit Password Form</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade active show" id="general" role="tabpanel" aria-labelledby="general-tab">
                                <form action="<?=base_url('AdminPanel/edit_pass_action');?>" method="post" class="needs-validation">
                                    <div class="form-group row">
                                        <label for="validationCustom0" class="col-xl-3 col-md-4"><span>*</span>Old Password</label>
                                        <input name="oldPass" class="form-control col-xl-8 col-md-7" id="validationCustom0" type="password">
                                    </div>

                                    <div class="form-group row">
                                        <label for="validationCustom0" class="col-xl-3 col-md-4"><span>*</span>New Password</label>
                                        <input name="newPass" class="form-control col-xl-8 col-md-7" id="validationCustom0" type="text">
                                    </div>

                                    <div class="form-group row">
                                        <label for="validationCustom0" class="col-xl-3 col-md-4"><span>*</span>Re Password</label>
                                        <input name="rePass" class="form-control col-xl-8 col-md-7" id="validationCustom0" type="text">
                                    </div>
                                    <div class="pull-right">
			                            <button type="submit" class="btn btn-primary">Submit</button>
			                        </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Container-fluid Ends-->

        </div>

<?php require_once('inc/footer.php');?>