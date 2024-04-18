<?php 
require_once('inc/head.php');
require_once('inc/header.php');
require_once('inc/left_sidebar.php');
?>
<link href="<?=base_url()?>assets/dropzone/css/dropzone.css" rel="stylesheet"  media="screen">
<script src="<?=base_url()?>assets/dropzone/dropzone.js"></script>
<div class="page-body">
<!-- Container-fluid starts-->
<div class="container-fluid">
<div class="page-header">
<div class="row">
<div class="col-lg-6">
<div class="page-header-left">
<h3>Edit Product Image
<small>Bigdeal Admin panel</small>
</h3>
</div>
</div>
<div class="col-lg-6">
<ol class="breadcrumb pull-right">
<li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
<li class="breadcrumb-item">Physical</li>
<li class="breadcrumb-item active">Edit Product Image</li>
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
<h5>Edit Product Image </h5>
</div>
<div class="card-body">
<div class="btn-popup pull-right">
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Add More Images</button>


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
     <tr>
     <th>Sno</th>
    <th>Images</th>
    <th>Action</th>
</tr>
</tr>
</thead>
<tbody>
<?php
$i=0;
foreach($get_img as $img)
{
    
echo '<tr>
<td>'.++$i.'</td>

<td align="center"><img src="'.base_url('assets/uploads/admin/product/').$img->f_name.'" width="100" height="100" /></td>
<td><a href="'.base_url('admin/delete/product_img/').$img->fid.'"><button id="deleterow" class="btn btn-danger btn-sm"><i class="icon-remove icon-white"></i> Delete</button></a></td>
</tr>';
}
?>
</tbody>
<tfoot>
   <tr>
     <th>Sno</th>
    <th>Images</th>
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

 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
         <h4 class="modal-title">Add More Image </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
           <form action="<?=base_url()?>admin/uploadimg-product" class="dropzone">
          <input id="prodid" name="prodid" type="hidden" value="<?= base64_decode(urldecode($this->uri->segment(3)));?>" />
          </form>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </div>
        
      </div>
      
    </div>
  </div>

<?php require_once('inc/footer.php');?>
