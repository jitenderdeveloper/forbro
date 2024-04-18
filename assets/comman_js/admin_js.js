 $(function(){
    /*================= Add category start ===========*/
        $(document).on('submit','#categoryForm',function(e){
            e.preventDefault();
            $.ajax({
                type:"POST",
                url:$("#categoryForm").attr('action'),
                data:new FormData($("#categoryForm")[0]),
                processData:false,
             contentType:false,
             cache:false,
             async:false,
                beforeSend: function() {
                 $(".btn-before").css('display','none');
                 $(".btn-after").css('display','inline');
                                        },
                 success: function(data){
                    $(".btn-before").css('display','inline');
                 $(".btn-after").css('display','none');
                    $("#main_msg").fadeIn();
                    data = $.parseJSON(data);
                    if(data.SUCCESS=='OK')
                    {
                     $("#main_msg").html('<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong> Category added successfully...</div>').fadeOut(5000);
                     $("#categoryForm")[0].reset();
                    }
                    else
                    {
                     $("#main_msg").html('<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Error!</strong> '+data.ERROR+'</div>').fadeOut(5000);
                    }
                 }
            });
        });

        /*============= add product================*/
        $(document).on("submit", "#productForm" , function(e){
        e.preventDefault();
        var formData = $("#productForm").serialize();
        $.ajax({
            url: $("#productForm").attr('action'),
            type: "POST",
            data: formData,
            dataType:'json',
            beforeSend:function()
            {
             $(".loading").css('display','inline');
            },
            success: function(res)
             {
             $(".loading").css('display','none');
             if(res.STATUS=='OK')
             {
                Swal.fire({
                position: 'center',
                icon: 'success',
                title: 'Product added successfully....',
                showConfirmButton: false,
                timer: 1500
                });
                 $("#productForm")[0].reset();
                 setTimeout(function () { location.reload(true); }, 1500);
             }else
             {
                Swal.fire({
                title: "<b><font color='red'>Error</font></b>", 
                html: '<font color"red">'+res.MSG+'</font>',  
                confirmButtonText: "OK", 
                });
             }

             }
        });
    });
/*==================== Upload slider==========*/        
$(document).on("submit", "#sliderForm" , function(e){
        e.preventDefault();
        var formData = new FormData($("#sliderForm")[0]);
        $.ajax({
            url: $("#sliderForm").attr('action'),
            type: "POST",
            data: formData,
            dataType:'json',
            processData:false,
            contentType:false,
            cache:false,
            async:false,
            beforeSend:function()
            {
             $(".loading").css('display','inline');
             $("#btnBefore").css('display','none');
             $("#btnAfter").css('display','inline');
            },
            success: function(res)
             {
              $("#btnBefore").css('display','inline');
             $("#btnAfter").css('display','none');
             $(".loading").css('display','none');
              
             if(res.STATUS=='OK')
             {
              $("#blah").attr('src', base_url + 'assets/images/no_image.gif');
                Swal.fire({
                position: 'center',
                icon: 'success',
                title: 'Slider added successfully....',
                showConfirmButton: false,
                timer: 1500
                });
                 $("#sliderForm")[0].reset();
                // setTimeout(function () { location.reload(true); }, 1500);
             }else
             {
                Swal.fire({
                title: "<b><font color='red'>Error</font></b>", 
                html: '<font color"red">'+res.MSG+'</font>',  
                confirmButtonText: "OK", 
                });
             }

             }
        });
    });
/*==================== Upload CMS==========*/  
$(document).on("submit", "#cmsForm" , function(e){
        e.preventDefault();
        var formData = new FormData($("#cmsForm")[0]);
        $.ajax({
            url: $("#cmsForm").attr('action'),
            type: "POST",
            data: formData,
            dataType:'json',
            processData:false,
            contentType:false,
            cache:false,
            async:false,
            beforeSend:function()
            {
             $(".loading").css('display','inline');
             $("#btnBefore").css('display','none');
             $("#btnAfter").css('display','inline');
            },
            success: function(res)
             {
              $("#btnBefore").css('display','inline');
             $("#btnAfter").css('display','none');
             $(".loading").css('display','none');
              
                 if(res.STATUS=='OK')
                 {
                  $("#blah").attr('src', base_url + 'assets/images/no_image.gif');
                    Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'Text added successfully....',
                    showConfirmButton: false,
                    timer: 1500
                    });
                     $("#cmsForm")[0].reset();
                    // setTimeout(function () { location.reload(true); }, 1500);
                 }
                 else
                 {
                    Swal.fire({
                    title: "<b><font color='red'>Error</font></b>", 
                    html: '<font color"red">'+res.MSG+'</font>',  
                    confirmButtonText: "OK", 
                    });
                 }

             }
        });
    });
/*==================== Upload cms==========*/  

}); //main function

/* ============ Get category details===========*/

 function get_category(id) {
       if(id!='')
       {
        $.post(base_url +'admin/get-category' , {id:id} , function(data){
          $("#ucategory").val(data.category);
           $("#udescription").val(data.description);
           $("#uimg").attr('src',data.img);
           $("#uid").val(data.id);
           $("#uccategory").html('<option value='+data.category+' selected="">'+data.category+'</option>');
        } ,'json');
       }
    }
/*=================== Get Sub Category============*/
 function get_subcat(val) {
        if(val!='')
        {
        $.post(base_url + 'admin/get-subcategory' , {id:val} , function(data){
        var html = '<option value="">---Select Sub Category---</option>';
        $.each(data,function(i,item){
          html+= '<option value="'+item.catid+'">'+item.cat+'</option>';
        });    
        $("#subcategory").html(html);
        },'json');
        }else
        {
            var html = '<option value="">Select Sub Category</option>';
            $("#subcategory").html(html);
        }
    }

 /*================= Get Product Details============ */
  function get_product(id)
  {
    if(id!='')
    {
      $.post(base_url + 'admin/get-product-details' , {'id':id} , function(data){
        $("#updateproductForm").attr('action',base_url +'admin/update-product/'+data.pid);
        $("#category").append('<option value="'+data.category_id+'" selected="">'+data.category+'</option>');
         $("#subcategory").append('<option value="'+data.subcategory_id+'" selected="">'+data.subcategory+'</option>');
          $("#brand").append('<option value="'+data.brand_id+'" selected="">'+data.brand+'</option>');
          $("#skucode").val(data.skucode);
          $("#hsn").val(data.hsn);
          $("#productname").val(data.pname);
          $("#pprice").val(data.pprice);
          $("#psprice").val(data.psprice);
          $("#pqty").val(data.pqty);
          $("#pweight").val(data.pweight);
          $("#psdescription").val(data.psdescription);
        $("#pldescription").val(data.pldescription);
           (data.featured==1)?$("#feature").prop('checked',true):("#feature").prop('checked',false);
           (data.top_sale==1)?$("#top_sale").prop('checked',true):("#top_sale").prop('checked',false);
           (data.special_sale==1)?$("#special_sale").prop('checked',true):("#special_sale").prop('checked',false);
           $("#updateproductForm").attr('action',base_url +'admin/update-product/'+data.pid);
      },'json');
    }
  }   

 /*============== Are you sure==========*/
 function swal()
   {
    Swal.fire({
  title: 'Are you sure?',
  text: "",
  type: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Yes, Submitted Attendance'
}).then((result) => {
  if (result.value)
  {   
   return true;
  }
})
   }
   /*-============ Product delete confirmatio ==============*/
    $('#delete').click(function(){
  swal({
  title: 'Are you sure?',
  text: "It will permanently deleted !",
  type: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Yes, delete it!'
}).then(function() {
  swal(
    'Deleted!',
    'Your file has been deleted.',
    'success'
  );
})
  
});
  function set_id(id) {
   $("#main_id").val(id);
  }