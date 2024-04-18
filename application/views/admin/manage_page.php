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
<h3>All page
<small>Bigdeal Admin panel</small>
</h3>
</div>
</div>
<div class="col-lg-6">
<ol class="breadcrumb pull-right">
<li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
<li class="breadcrumb-item">Physical</li>
<li class="breadcrumb-item active">All Page</li>
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
<h5>All page </h5>
</div>
<div class="card-body">
<div class="btn-popup pull-right">
<a href="<?= base_url('admin/add-page');?>"><button type="button" class="btn btn-primary" >Add page</button></a>
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
    <th>Heading</th>
    <th>Img</th>
    <th>Pagename</th>
    <th>Action</th>
</tr>
</thead>
<tbody>
<?php
$i=0;
foreach($cms as $sl)
{
echo '<tr>
<td>'.++$i.'</td>
<td>'.$sl->heading.'</td>
<td><img src="'.base_url('assets/uploads/admin/cms/').$sl->imgpath.'" width="200"/></td>
<td>'.$sl->pagename.'</td>
<td><a href="'.base_url('admin/add-page/').$sl->id.'" ><button type="button" class="btn btn-primary" >Edit</button></a></td>
</tr>';
}
?>
</tbody>
<tfoot>
   <tr>
   <th>Sno</th>
    <th>Heading</th>
    <th>Text</th>
    <th>Img</th>
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

<?php require_once('inc/footer.php');?>
