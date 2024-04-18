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
                    <div class="card-header">
                        <h5>Category Page</h5>
                    </div>
                    <div class="card-body">
                        
                        <div class="table-responsive">
                            <div class="product-physical">
                                <table id="customers">
                                  <tr>
                                    <th>Sr. No.</th>
                                    <th>Page Name</th>
                                    <th>Action</th>
                                  </tr>
                                  <?php
                                  $i = '1';
                                  foreach ($d as $res)
                                  {
                                  ?>
                                  <tr>
                                    <td><?= $i; ?></td>
                                    <td><?= $res['name'];?></td>
                                    <td width="200"><a href="<?=base_url('admin/cms-editor/'.$res['id'])?>" class="btn btn-info">Edit</a>
                                        <a href="<?=base_url('AdminPanel/cms_delete/').$res['id']?>" class="btn btn-danger">Delete</a></td>
                                  </tr>
                                  <?php
                                  $i++;
                              }
                                  ?>
                                </table>
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