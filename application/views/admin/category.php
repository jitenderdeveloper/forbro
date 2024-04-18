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
<h3>Category
<small>Bigdeal Admin panel</small>
</h3>
</div>
</div>
<div class="col-lg-6">
<ol class="breadcrumb pull-right">
<li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
<li class="breadcrumb-item">Physical</li>
<li class="breadcrumb-item active">Category</li>
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
<h5>Products Category</h5>
</div>
<div class="card-body">
<div class="btn-popup pull-right">
<button type="button" class="btn btn-primary" data-toggle="modal" data-original-title="test" data-target="#exampleModal">Add Category</button>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title f-w-600" id="exampleModalLabel">Add Category</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        </div>
        <div class="modal-body">
            <form class="needs-validation" method="post" action="<?= base_url('admin/insert-category');?>" enctype="multipart/form-data" id="categoryForm">
                <span id="main_msg"></span>
                
                <div class="form">
                    <div class="form-group">
                        <label for="validationCustom01" class="mb-1">Category Name :</label>
                        <input class="form-control" id="category" type="text" name="category" required="">
                    </div>
                     <div class="form-group">
                        <label for="validationCustom01" class="mb-1">Category Description :</label>
                       <textarea name="description" id="description" class="form-control"></textarea>
                    </div>
                    <div class="form-group mb-0">
                        <label for="validationCustom02" class="mb-1">Category Image :</label>
                        <input class="form-control" id="catimg" type="file" name="catimg" >
                    </div>
                </div>
            
        </div>
        <div class="modal-footer">
            <button class="btn btn-primary" type="submit"><span
             class="btn-before">Add</span><span class="btn-after" style="display: none;">Please Wait....</span></button>
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
        </div>
        </form>
    </div>
</div>
</div>
</div>
<div class="table-responsive">
<!--<div id="basicScenario" class="product-physical"></div>-->
<?php
if($this->session->flashdata('error'))
{
    echo $this->session->flashdata('error');
}
?>
<table class="display" id="basic-1">
<thead>
<tr>
    <th>Sno</th>
    <th>Image</th>
    <th>Category Name</th>
    <th>Action</th>
</tr>
</thead>
<tbody>
<?php
$i=0;
foreach($category as $cat)
{
    $url = (isset($cat->Img))?base_url('assets/uploads/admin/category/').$cat->Img:base_url('assets/images/dashboard/product/1.jpg');

    echo
'<tr>
    <td>'.++$i.'</td>
    <td>
        <div class="d-flex">
            <img src="'.$url.'" alt="" class="blur-up lazyloaded" style="height: 50px; width: 50px;">
           
        </div>
    </td>
    <td>'.ucwords($cat->CategoryName).'</td>
    <td><a href="#" style=" font-size: 25px;" data-toggle="modal" data-original-title="test" data-target="#exampleModal1" onclick="get_category('.$cat->CategoryID.')"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;&nbsp;<a href="'.base_url('admin/delete/category/').$cat->CategoryID.'" style="color: red; font-size: 25px;"><i class="fa fa-trash"></i></a></td>
    
</tr>';
}
?>

</tbody>
<tfoot>
    <tr>
    <th>Sno</th>
    <th>Image</th>
    <th>Category Name</th>
    <th>Action</th>
</tr>
</tfoot>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- Container-fluid Ends-->
</div>
<!-- ======================== Update Category Form===========-->
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title f-w-600" id="exampleModalLabel">Update Category</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        </div>
        <div class="modal-body">
            <form class="needs-validation" method="post" action="<?= base_url('admin/update-category');?>" enctype="multipart/form-data" id="categoryupdateForm">
                <input type="hidden" name="uid" id="uid"/>
                <span id="main_msg"></span>
                
                <div class="form">
                    <div class="form-group">
                        <label for="validationCustom01" class="mb-1">Category Name :</label>
                        <input class="form-control" id="ucategory" type="text" name="ucategory" required="">
                    </div>
                     <div class="form-group">
                        <label for="validationCustom01" class="mb-1">Category Description :</label>
                       <textarea name="udescription" id="udescription" class="form-control"></textarea>
                    </div>
                    <div class="form-group mb-0">
                        <label for="validationCustom02" class="mb-1">Category Image :</label>
                        <input class="form-control" id="ucatimg" type="file" name="ucatimg" >
                    </div><br/>
                     <div class="form-group">
                       <img src="<?= base_url('assets/images/dashboard/product/1.jpg');?>"  id="uimg" width="100"/>
                      
                    </div>
                </div>
            
        </div>
        <div class="modal-footer">
            <button class="btn btn-primary" type="submit"><span
             class="btn-before">Update</span><span class="btn-after" style="display: none;">Please Wait....</span></button>
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
        </div>
        </form>
    </div>
</div>
</div>
</div>

<?php require_once('inc/footer.php');?>
