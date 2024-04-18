  fetchcart_data();//fetch cart total
  fetchcart_alldata();//fetc cart all data

  /*===================== COntact Us OTP ============ */
function send_otp(val)
{
  $("#registerFormMsg").fadeIn();
if(val.length>10 || val.length<10)
{
$("html, body").animate({ 
        scrollTop: $('#registerFormMsg').offset().top 
    }, 500);
$("#registerFormMsg").html('<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><strong>Error!</strong> Please enter valid mobile number!</div>').fadeOut(5000);
}
else
{

$.ajax({
url: base_url + 'send-otp',
type:"POST",
data:{'mobile':val},
success:function(data)
{

if(data.trim()==1)
{
Swal.fire({
position: 'center',
type: 'success',
title: 'OTP Send Successfully....',
showConfirmButton: false,
timer: 1500
});
$(".otp-div").css('display','inline');
$("#otp").focus();
}
else
{
$(".otp-div").css('display','none');
}
}
});
}

}
function verify_otp(val)
{
$.ajax({
url: base_url + 'check-otp',
type:"POST",
data:{'val':val},
success:function(data)
{
if(data.trim()==1)
{
$("#contact_subm").css('display','inline');  
$("#otp_msg").html('<font color="green"><b>Mobile Verify Successfully</b></font>');
}
else
{
$("#otp_msg").html('<font color="red"><b>'+data.trim()+'</b></font>');
$("#contact_subm").css('display','none');
}
}
});
}

  /*========== Quick View Product Get===========*/
  function quick_view_get(id) {
    if(id!='')
    {
      $.post(base_url + 'quick-view-get' , {'id':id} , function(data){
       $("#quick-view-img1").attr('src',data.img);
       $("#quick-view-title").text(data.pname);
       $("#quick-view-price").text(data.pprice);
       $("#quick-view-description").text(data.pdescription);
       $("#quick-view-link").attr('href',data.link);
      },'json');
    }
  }

  /*============== Fetch Cart Data Total===========*/
  function fetchcart_data()
  {
    var total = 'total';
    $.ajax({
      url:base_url + 'fetchcart-data',
      data:{'cart_total':total},
      type:"POST",
      dataType:'json',
      success:function(data)
      {
         $(".cartNum").text(data.total);  
      },
    });
   
  }
    function fetchcart_alldata()
  {
    var all = 'all';
    $.ajax({
      url:base_url + 'fetchcart-alldata',
      data:{'all':all},
      type:"POST",
      dataType:'json',
      success:function(data)
      {
         $ 
      },
    });
   
  }
$(function(){

//Add to cart  
$(document).on('click','.addCart',function(e){
  var color = $('input[name=color]:checked', '#detailForm').val()?$('input[name=color]:checked', '#detailForm').val():'';
  var color_length =   $(':radio[name="color"]').length;
    var color_checkeed =   $(':radio[name="color"]:checked').length;
  var size = $('#size').find(":selected").val()?$('#size').find(":selected").val():'';
  var length_size = $('#size > option').length;
  var qty1 = $("#quantity_post_details").val();
  if(color_length!=0 && color_checkeed<1)
  {
    $("#sizeMSG").text('');
    $("#colorMSG").text('Please select color');
    $("html, body").animate({ 
        scrollTop: $('.product-right').offset().top 
    }, 500);
     e.preventDefault();
  }else if(length_size>1 && size=='')
  {
     $("#colorMSG").text('');
     $("html, body").animate({ 
        scrollTop: $('.product-right').offset().top 
    }, 500);
      $("#sizeMSG").text('Please select size');
      e.preventDefault();


  }else{
    $("#colorMSG , #sizeMSG").text('');
  if (typeof qty1 !== 'undefined') {
    var qty = qty1
  }    else
{
   var qty = 1;
}
  var pid = $(this).attr('data-pid');
  var pname = $(this).attr('data-pname');
   var price = $(this).attr('data-price');
 $(".loading").css('display','inline');
 $.post(base_url + 'addto-cart' , {'pid':pid ,'pname':pname ,'price':price ,'qty':qty ,'color':color ,'size':size} , function(data){
 $(".loading").css('display','none');
  if(data.SUCCESS=='OK')
  {
    fetchcart_data();
    fetchcart_alldata();
    $(window).scrollTop(0);
  }
  else
  {
     
  }
 },'json');
}
});

//Delete cart
$(document).on('click','.deleteCart',function(data){
  var id = $(this).attr('data-id');
  if(id!='')
  {
    $.ajax({
      type:"POST",
      url: base_url+ 'deletecart-data',
      data:{'delete':'delete' ,'rowid':id},
      dataType:'json',
      beforeSend:function()
      {
       $(".loading").css('display','inline');
      },
      success:function(data)
      {
        $(".loading").css('display','none');
        if(data.SUCCESS=='OK')
        {
         window.location.reload(true);
        }
      }
    });
  }
});

//Update Cart
$(document).on('change','.updateCart',function(){
  var id = $(this).attr('data-id');
  var qty = $(this).val();
  var type = 'update_cart';
   if(id!='')
  {
    $.ajax({
      type:"POST",
      url: base_url+ 'updatecart-data',
      data:{'type':type ,'rowid':id , 'qty':qty},
      dataType:'json',
      beforeSend:function()
      {
       $(".loading").css('display','inline');
      },
      success:function(data)
      {
        $(".loading").css('display','none');
        if(data.SUCCESS=='OK')
        {
         window.location.reload(true);
        }
      }
    });
  }
  
});

//Signup 
$(document).on('submit','#signupForm',function(e){
  e.preventDefault();
  var formData = $("#signupForm").serialize();
  $.ajax({
    type:"POST",
    url: $("#signupForm").attr('action'),
    data:formData,
    dataType:'json',
    beforeSend:function()
    {
      $(".loading").css('display','inline');
    },
    success:function(data)
    {
       $("#registerFormMsg").fadeIn();
      $(".loading").css('display','none');
      if(data.SUCCESS=='OK')
      {
        $("#registerFormMsg").fadeIn();
        $("#registerFormMsg").html('<div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><strong>Success!</strong> Registration successfull....!</div>').fadeOut(5000);
         $("#signupForm")[0].reset();
          $(window).scrollTop(0);
      }
      else
      {
        $("#registerFormMsg").html('<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><strong>Error!</strong> '+data.MSG+'!</div>').fadeOut(5000);
          $(window).scrollTop(0);
      }
    }
  });
});

//Login
$(document).on('submit','.loginForm', function(e){
  e.preventDefault();
  var type = $(this).attr('data-id');
  if(type=='page-form')
  {
   var formData = $("#mainLoginForm").serialize();
   var url =  $("#mainLoginForm").attr('action')
  }
  else
  {
   var formData = $("#mainLoginForm1").serialize();
   var url =  $("#mainLoginForm1").attr('action')
  }
  $.ajax({
    type:"POST",
    url: url ,
    data:formData,
    dataType:'json',
    beforeSend:function()
    {
      $(".loading").css('display','inline');
    },
    success:function(data)
    {
       $(".loginFormMsg").fadeIn();
      $(".loading").css('display','none');
      if(data.SUCCESS=='OK')//when no data in cart
      {
        window.location.href = base_url + 'user/dashboard';
      }else if(data.SUCCESS=='OK1')//when some data in cart
      {
          window.location.href = base_url + 'user/dashboard/check-out';
      }
      else
      {
        $("#password").val('');
        $(".loginFormMsg").html('<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><strong>Error!</strong> '+data.MSG+'!</div>').fadeOut(5000);
           $("html, body").animate({ 
        scrollTop: $('.loginFormMsg').offset().top 
    }, 1000);

      }
    }
  });

});

/*=============== Review of product ============== */ 

$(document).on('submit','#reviewForm',function(e){
  e.preventDefault();
  $.ajax({
    type:"POST",
    url: base_url + 'review-action',
    data:$("#reviewForm").serialize(),
    dataType:'json',
    beforeSend:function()
    {
     $("#rBtn").css('display','none');
     $("#rBtn1").css('display','inline');
    },
    success:function(res)
    {
      $("#rBtn1").css('display','none');
     $("#rBtn").css('display','inline');
     $("#reviewMsg").text('');
      if(res.SUCCESS=='OK')
      {
                Swal.fire({
        position: 'center',
        type: 'success',
        title: 'Your Review Successfully Submit.....',
        showConfirmButton: false,
        timer: 2000
        });
        $("#reviewForm")[0].reset();
      }else
      {
        $("#reviewMsg").html('<font color="red"><b>'+res.ERROR+'</b></font>');
      }
    }
  });
});

   });
 