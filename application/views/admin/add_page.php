<?php 
require_once('inc/head.php');
require_once('inc/header.php');
require_once('inc/left_sidebar.php');
?>
<style type="text/css">
    img{
  max-width:180px;
}

</style>
<div class="page-body">

<!-- Container-fluid starts-->
<div class="container-fluid">
<div class="page-header">
<div class="row">
<div class="col-lg-6">
<div class="page-header-left">
<h3>Update Page
</h3>
</div>
</div>
<div class="col-lg-6">
<ol class="breadcrumb pull-right">
<li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
<li class="breadcrumb-item active">update Page</li>
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

<div class="row product-adding">

<!-----------  First Form Start---------------->

<div class="col-xl-9">
<?php
$i=0;
foreach($pd as $sl)
{
?>
<form  method="post" action="<?= base_url('admin/insert-pagetext');?>" id="cmsForm" enctype="multipart/form-data">
<div class="form">
    
    <div class="form-group mb-3 row">
<h3 style="text-align: center;">Page to be Update: <?=$sl->pagename;?></h3>
        <input type="hidden" name="id" value="<?=$sl->id;?>">
    </div>
    <!-- <div class="form-group mb-3 row">
        <input type="hidden" name="pagename" value="<?=$sl->pagename;?>">
    </div> -->
    <div class="form-group mb-3 row">
        <label for="validationCustomUsername" class="col-xl-3 col-sm-4 mb-0">Head Line :</label>
        <input class="form-control col-xl-8 col-sm-7" id="heading" name="heading" type="text" required="" value="<?=$sl->heading;?>">
        <div class="invalid-feedback offset-sm-4 offset-xl-3">Please choose Valid Text.</div>
    </div>
    <div class="form-group mb-3 row">
        <label for="validationCustom01" class="col-xl-3 col-sm-4 mb-0">Page Content :</label>
        <textarea type="text" name="pagetext" id="editor1"><?=$sl->text;?></textarea>
        
        <div class="valid-feedback">Looks good!</div>
    </div>
    <div class="form-group mb-3 row">
        <label for="validationCustom02" class="col-xl-3 col-sm-4 mb-0">Select Image :</label>
       <input type="file" class="form-control col-xl-8 col-sm-7" onchange="readURL(this);" id="file" name="files" required="" />
        <div class="valid-feedback">Looks good!</div>
    </div>
     <div class="form-group mb-3 row">
        <label for="validationCustom02" class="col-xl-3 col-sm-4 mb-0">&nbsp;</label>
       <img id="blah" src="<?= base_url('assets/uploads/admin/cms/'.$sl->imgpath);?>" alt="your image" />
        <div class="valid-feedback">Looks good!</div>
    </div>


</div>
<div class="offset-xl-3 offset-sm-4" align="center">
    <button type="submit" class="next btn btn-info"><span id="btnBefore">Submit</span><span id="btnAfter" style="display: none;">Please Wait...</span></button>
    
</div>
</form>
<?php 
}
 ?>
</div>

<!-----------  First Form End---------------->

</div>
</div>
</div>
</div>
</div>
</div>
<!-- Container-fluid Ends-->
</div>

<?php require_once('inc/footer.php');?>

<script type="text/javascript">
    function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
</script>