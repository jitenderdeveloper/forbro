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
                        <h3>CMS
                            <small>Admin panel</small>
                        </h3>
                        <center>
                            <h4>
                                <?php
                                if($this->session->flashdata('error'))
                                {
                                    echo '<font color="red">'.$this->session->flashdata('error').'</font>';
                                }
                                ?>
                            </h4>
                        </center>
                    </div>
                </div>
                <div class="col-lg-6">
                    <ol class="breadcrumb pull-right">
                        <li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">Physical</li>
                        <li class="breadcrumb-item active">CMS</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->

    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <div class="product-physical">
                                <?php
                                $i = '1';
                                foreach ($d as $res) {
                                    
                                ?>
                                <form action="<?=base_url('Admin_panel/cms_editor_action');?>" method="post" class="form-horizontal auth-form">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Page Name</label>
                                        <input type="text" class="form-control" name="name" disabled="disabled" value="<?=$res['name'];?>">
                                        <input type="hidden" name="uid" value="<?= $res['id'];?>">

                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Page Title</label>
                                        <input required="" name="title" type="text" class="form-control" placeholder="Enter Title" value="<?=$res['title'];?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Add Content</label>
                                        <textarea id="editor1" name="description" cols="30" rows="10"><?=$res['description'];?></textarea>
                                    </div>
                                    <div class="form-button">
                                        <button class="btn btn-primary" type="submit">Submit</button>
                                    </div>
                                </form>
                                <?php
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->
</div>

<?php require_once('inc/footer.php');?>