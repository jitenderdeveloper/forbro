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
<h3>All Variation
<small>Bigdeal Admin panel</small>
</h3>
</div>
</div>
<div class="col-lg-6">
<ol class="breadcrumb pull-right">
<li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
<li class="breadcrumb-item">Physical</li>
<li class="breadcrumb-item active">All Variation</li>
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
<h5>All Variation </h5>
</div>
<div class="card-body">
<div class="btn-popup pull-right">
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Add Variation</button>
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
    <th>Type</th>
    <th>Data</th>
    <th>Price</th>
    <th>Action</th>
</tr>
</thead>
<tbody>
<?php
$i=0;
foreach($get_variation as $v)
{
    
echo '<tr>
<td>'.++$i.'</td>

<td>'.$v->type.'</td>
<td>'.$v->data.'</td>
<td>'.$v->price.'</td>
<td><a href="'.base_url('admin/delete/variation/').$v->varid.'"  class="btn btn-danger btn-sm">Delete</a></td>
</tr>';
}
?>
</tbody>
<tfoot>
   <tr>
    <th>Sno</th>
    <th>Type</th>
    <th>Data</th>
    <th>Price</th>
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
         <h4 class="modal-title">Add Variation </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <form method="post" action="<?= base_url('admin/insert-variation/').$id;?>" id="addvariationForm">
        <div class="modal-body">
         <div class="row">
             <div class="col-md-12">
                <label>Variation Type</label>
               <select class="form-control" id="type" name="type"  required="">
                <option value="">Select Variation Type</option>
                <option value="color">Color</option>
                <option value="size">Size</option>
        </select>  
             </div>
          
         </div>
         <br/>
        <div class="row">
          <div class="col-md-12">
             <div class="customer_records">
    <input name="value[]" type="text" id="value" placeholder="Enter value" required="">
    &nbsp;
    <input name="price[]" type="number" id="price" placeholder="Enter Price">
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    <a class="extra-fields-customer" href="#" title="Add More" style="color: green; font-size: 25px;"><i class="fa fa-plus btn-sm" aria-hidden="true"></i></button>
  </a>
  </div>

  <div class="customer_records_dynamic"></div>

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
<script type="text/javascript">
 $('.extra-fields-customer').click(function() {
  $('.customer_records').clone().appendTo('.customer_records_dynamic');
  $('.customer_records_dynamic .customer_records').addClass('single remove');
  $('.single .extra-fields-customer').remove();
  $('.single').append('<a href="#" class="remove-field btn-remove-customer" title="Remove" style="color:red; font-size:20px;"><i class="fa fa-minus" aria-hidden="true"></i></a>');
  $('.customer_records_dynamic > .single').attr("class", "remove");

  $('.customer_records_dynamic input').each(function() {
    var count = 0;
    var fieldname = $(this).attr("name");
    $(this).attr('name', fieldname + count);
    count++;
  });

});

$(document).on('click', '.remove-field', function(e) {
  $(this).parent('.remove').remove();
  e.preventDefault();
});
</script>