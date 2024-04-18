<?php 
require_once('inc/head.php');
require_once('inc/header.php');
require_once('inc/left_sidebar.php');
?>
<style type="text/css">
    label
    {
        font-weight: bold;
    }
</style>
<div class="page-body">
<!-- Container-fluid starts-->
<div class="container-fluid">
<div class="page-header">
<div class="row">
<div class="col-lg-6">
<div class="page-header-left">
<h3>All Product
<small>Bigdeal Admin panel</small>
</h3>
</div>
</div>
<div class="col-lg-6">
<ol class="breadcrumb pull-right">
<li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
<li class="breadcrumb-item">Physical</li>
<li class="breadcrumb-item active">All Product</li>
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
<h5>All Products </h5>
</div>
<div class="card-body">
<div class="btn-popup pull-right">
<a href="<?= base_url('admin/add-product');?>"><button type="button" class="btn btn-primary" >Add Product</button></a>


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
    <th>Category</th>
    <th>Sub Category</th>
    <th>Name</th>
    <th>Price</th>
    <th>Qty</th>
    <th>View Product</th>
    <th>Action</th>
</tr>
</thead>
<tbody>
<?php
$i=0;
foreach($products as $product)
{
    
echo '<tr>
<td>'.++$i.'</td>
<td>'.single_row('tbl_productcategories',['CategoryID'=>$product->ProductCategoryID],'CategoryName').'</td>
<td>'.single_row('tbl_productcategories',['CategoryID'=>$product->sub_category],'CategoryName').'</td>
<td>'.$product->ProductName.'</td>
<td>'.$product->ProductPrice.'</td>
<td>'.$product->ProductStock.'</td>
<td><a href="'.base_url('admin/product-details/').url_title($product->ProductName ,'-',true).'/'.$product->ProductID.'" target="_blank" style="color:green; font-size:30px;" ><i class="fa fa-eye" aria-hidden="true"></i>
</a></td>
<td><button id="editrow" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" onclick="get_product('.$product->ProductID.')"><i class="icon-pencil icon-white"></i> Edit</button>&nbsp;&nbsp;<a href="'.base_url('admin/edit-images/'.urlencode(base64_encode($product->ProductImage))).'" class="btn btn-success btn-sm">Edit Images<a/><br/><br/><a href="'.base_url().'admin/all-variation/'.urlencode(base64_encode($product->ProductID)).'"  class="btn btn-warning btn-sm">Variation</a>&nbsp;<button id="deleterow" class="btn btn-danger btn-sm"><i class="icon-remove icon-white"></i> Delete</button></td>
</tr>';
}
?>
</tbody>
<tfoot>
   <tr>
     <th>Sno</th>
    <th>Category</th>
    <th>Sub Category</th>
    <th>Name</th>
    <th>Price</th>
    <th>Qty</th>
    <th>View Product</th>
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
         <h4 class="modal-title">Update Product </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <form method="post" action="" id="updateproductForm">
        <div class="modal-body">
         <div class="row">
             <div class="col-md-6">
                <label>Category</label>
               <select class="form-control" id="category" name="category" onchange="get_subcat(this.value)" required="">
            
            <?php
                               foreach($category as $cat)
                               {
                               echo '<option value='.$cat->CategoryID.'>'.ucwords($cat->CategoryName).'</option>';
                               }
                               ?>
        </select>  
             </div>
              <div class="col-md-6">
                <label>Sub Category</label>
                 <select class="form-control" id="subcategory" name="subcategory" required="">

           
        </select>
             </div>
         </div>
        
          <div class="row">
             <div class="col-md-6">
                <label>Brand</label>
               <select class="form-control" id="brand" name="brand"  required="">
            <option value="">Select Brand</option>
            <?php
                            foreach($brand as $bra)
                               {
                               echo '<option value='.$bra->brandid.'>'.ucwords($bra->brand_name).'</option>';
                               }
                               ?>
        </select>
             </div>
              <div class="col-md-6">
                <label>SKU Code</label>
                <input class="form-control" id="skucode" name="skucode" type="text" required="">
             </div>
         </div>
      
         <div class="row">
             <div class="col-md-6">
                <label>Product Name</label>
              <input class="form-control" id="productname" name="productname" type="text" required="">
             </div>
              <div class="col-md-6">
                <label>Product MRP Price</label>
                <input class="form-control" id="pprice" name="pprice" type="text" required="">
             </div>
         </div>
        
         <div class="row">
             <div class="col-md-6">
                <label>Product Selling Price</label>
              <input class="form-control" id="psprice" name="psprice" type="text" required="">
             </div>
              <div class="col-md-6">
                <label>Product QTY</label>
               <input class="form-control" type="number"  name="pqty" id="pqty" required="">
             </div>
         </div>
      
         <div class="row">
             <div class="col-md-6">
                <label>Product Weight</label>
              <input class="form-control col-xl-8 col-sm-7" id="pweight" name="pweight" type="text" required="">
             </div>
              <div class="col-md-6">
                <label>Product Sale Type</label>
               <div class="col-xl-12 col-sm-8 pl-0 description-sm">
           <input type="checkbox" name="feature" id="feature">&nbsp;&nbsp;<b>Featured Sale</b>  &nbsp;&nbsp;<input type="checkbox" name="top_sale" id="top_sale">&nbsp;&nbsp;<b>Top Sale</b>&nbsp;&nbsp;<input type="checkbox" name="special_sale" id="special_sale">&nbsp;&nbsp;<b>Special Sale</b>
        </div>
             </div>
         </div>
        
         <div class="row">
             <div class="col-md-12">
                <label>Product Short Description</label>
              <textarea id="psdescription" name="psdescription"  rows="3" class="form-control"></textarea>
             </div>
              
             </div>
         <div class="row">
             <div class="col-md-12">
                <label>Product Long Description</label>
              <textarea id="pldescription" name="pldescription"  rows="3" class="form-control"></textarea>
             </div>
              
             </div>
             <br/>
              <div class="row">
            
             <div class="col-md-12" align="center">
               <button type="submit" name="sub" class="btn btn-primary">Update</button>
             </div>
        
              
             </div>
         </div>
     </form>
        </div>
        
      </div>
      
    </div>
  </div>

<?php require_once('inc/footer.php');?>
