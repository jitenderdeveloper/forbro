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
<h3>Add Products
</h3>
</div>
</div>
<div class="col-lg-6">
<ol class="breadcrumb pull-right">
<li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
<li class="breadcrumb-item active">Add Product</li>
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
<h5>Add Product</h5>
</div>

<div class="card-body">

<div class="row product-adding">

<!-----------  First Form Start---------------->

<div class="col-xl-7">
 <div class="form-group mb-3 row">
        <label for="validationCustom01" class="col-xl-3 col-sm-4 mb-0"><b>Upload Image :</b></label>
        <form action="<?=base_url()?>admin/uploadimg-product" class="dropzone">
<input id="prodid" name="prodid" type="hidden" value="" />
</form>
        <div class="valid-feedback">Looks good!</div>
    </div>
    <br/>
<form class="add-product-form"  method="post" action="<?= base_url('admin/insert-product');?>" id="productForm">
     <input id="imgprodid" name="imgprodid" type="hidden" value="<?php echo uniqid('img')?>" />
<div class="form">
    <div class="form-group mb-3 row">
        <label for="validationCustom01" class="col-xl-3 col-sm-4 mb-0">Category :</label>
         <select class="form-control digits col-xl-8 col-sm-7" id="category" name="category" onchange="get_subcat(this.value)" required="">
            <option value="">Select Category</option>
            <?php
                               foreach($category as $cat)
                               {
                               echo '<option value='.$cat->CategoryID.'>'.ucwords($cat->CategoryName).'</option>';
                               }
                               ?>
        </select>
        <div class="valid-feedback">Looks good!</div>
    </div>
    <div class="form-group mb-3 row">
        <label for="validationCustom01" class="col-xl-3 col-sm-4 mb-0">Sub Category :</label>
         <select class="form-control digits col-xl-8 col-sm-7" id="subcategory" name="subcategory">
            <option value="">Select Sub Category</option>
        </select>
        <div class="valid-feedback">Looks good!</div>
    </div>
     <div class="form-group mb-3 row">
        <label for="validationCustom01" class="col-xl-3 col-sm-4 mb-0">Brand :</label>
         <select class="form-control digits col-xl-8 col-sm-7" id="brand" name="brand"  required="">
            <option value="">Select Brand</option>
            <?php
                            foreach($brand as $bra)
                               {
                               echo '<option value='.$bra->brandid.'>'.ucwords($bra->brand_name).'</option>';
                               }
                               ?>
        </select>
        <div class="valid-feedback">Looks good!</div>
    </div>

    <div class="form-group mb-3 row">
        <label for="validationCustomUsername" class="col-xl-3 col-sm-4 mb-0">Product Code (SKU Code) :</label>
        <input class="form-control col-xl-8 col-sm-7" id="skucode" name="skucode" type="text" required="">
        <div class="invalid-feedback offset-sm-4 offset-xl-3">Please choose Valid Code.</div>
    </div>
    <div class="form-group mb-3 row">
        <label for="validationCustom01" class="col-xl-3 col-sm-4 mb-0">Product Name :</label>
        <input class="form-control col-xl-8 col-sm-7" id="productname" name="productname" type="text" required="">
        <div class="valid-feedback">Looks good!</div>
    </div>
 <div class="form-group mb-3 row">
        <label for="validationCustom01" class="col-xl-3 col-sm-4 mb-0">Product HSN :</label>
        <input class="form-control col-xl-8 col-sm-7" id="hsn" name="hsn" type="text" required="">
        <div class="valid-feedback">Looks good!</div>
    </div>
    <div class="form-group mb-3 row">
        <label for="validationCustom02" class="col-xl-3 col-sm-4 mb-0">Product MRP Price :</label>
        <input class="form-control col-xl-8 col-sm-7" id="pprice" name="pprice" type="text" required="">
        <div class="valid-feedback">Looks good!</div>
    </div>
    <div class="form-group mb-3 row">
        <label for="validationCustom02" class="col-xl-3 col-sm-4 mb-0">Product Selling Price :</label>
        <input class="form-control col-xl-8 col-sm-7" id="psprice" name="psprice" type="text" required="">
        <div class="valid-feedback">Looks good!</div>
    </div>
    
</div>
<div class="form">
    <div class="form-group row">
        <label class="col-xl-3 col-sm-4 mb-0">Products Qty :</label>
        <fieldset class="qty-box col-xl-9 col-xl-8 col-sm-7 pl-0">
            <div class="input-group">
                <input class="touchspin" type="text" value="1" name="pqty" id="pqty" required="">
            </div>
        </fieldset>
    </div>
      <div class="form-group mb-3 row">
        <label for="validationCustom02" class="col-xl-3 col-sm-4 mb-0">Product Weight :</label>
        <input class="form-control col-xl-8 col-sm-7" id="pweight" name="pweight" type="text" required="">
        <div class="valid-feedback">Looks good!</div>
    </div>
     <div class="form-group row">
        <label class="col-xl-3 col-sm-4">Product Size:</label>
        <div class="col-xl-8 col-sm-7 pl-0 description-sm">
            <?php
            $size = ['XS','S','M','L','XL','XXL'];
            foreach($size as $s)
            {
                echo '<div class="form-check form-check-inline">
                <input type="checkbox" name="size[]" id="inlineCheckbox'.$s.'" value="'.$s.'">
  <label class="form-check-label" for="inlineCheckbox'.$s.'">'.$s.'</label>
</div>';
            }
            ?>
            

        </div>
    </div>
     <div class="form-group row">
        <label class="col-xl-3 col-sm-4">Product Sale Type:</label>
        <div class="col-xl-8 col-sm-7 pl-0 description-sm">
           <input type="checkbox" name="feature" id="feature">&nbsp;&nbsp;<b>Featured Sale</b>  &nbsp;&nbsp;<input type="checkbox" name="top_sale" id="top_sale">&nbsp;&nbsp;<b>Top Sale</b>&nbsp;&nbsp;<input type="checkbox" name="special_sale" id="special_sale">&nbsp;&nbsp;<b>Special Sale</b>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-xl-3 col-sm-4">Product Short Description:</label>
        <div class="col-xl-8 col-sm-7 pl-0 description-sm">
            <textarea id="psdescription" name="psdescription"  rows="3" class="form-control col-xl-10 col-sm-8"></textarea>
        </div>
    </div>

    <div class="form-group row">
        <label class="col-xl-3 col-sm-4">Product Full Description :</label>
        <div class="col-xl-8 col-sm-7 pl-0 description-sm">
            <textarea id="pldescription" name="pldescription"  rows="10" class="form-control col-xl-12 col-sm-8"></textarea>
        </div>
    </div>
</div>
<div class="offset-xl-3 offset-sm-4" align="center">
    <input type="submit" name="sub" class="next btn btn-info" value="Submit" id="subm" />
</div>
</form>

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
<script type="text/javascript">
    $(document).ready(function(){
        var imgid = $("#imgprodid").val();
        $("#prodid").val(imgid);
    });


</script>
<?php require_once('inc/footer.php');?>



