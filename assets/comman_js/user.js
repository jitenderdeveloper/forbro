get_address();
total_wishlist_item();
fetchwishlist_alldata();
function get_location(val)
{
if(val!='')
{
	$('.loading').css('display','inline');
	$.post(base_url + 'get-location' , {'zip':val} , function(data){
		$('.loading').css('display','none');
		$("#adcity , #city , #pcity").val(data.district);
		$("#adcountry , #country , #pcountry").val(data.country);
		$("#adstate , #state , #pstate").val(data.state);
	},'json');
}
}

/*=========== Get total wishlist item========== */
function total_wishlist_item(val)
{
var type = 'total_item_wishlist';
    $.ajax({
      url:base_url + 'total-wishlist-item',
      data:{'type':type},
      type:"POST",
      dataType:'json',
      success:function(data)
      {
         $("#totalWishlist").text(data.total);  
      },
    });
}
//fetch wish list item for right sidebar
function fetchwishlist_alldata()
  {
    var all = 'all';
    $.ajax({
      url:base_url + 'fetchwishlist-alldata',
      data:{'all':all},
      type:"POST",
      dataType:'json',
      success:function(data)
      {
         $("#getWishlistItem").html(data.item);
      },
    });
   
  }

/*================ Fetch address=============*/
function get_address()
{

$("#allAddress").load(base_url + 'getAddress');
}
/*=============== Select address validation in checkout page===========*/
function check() {
    if($(".addressRadio").is(":checked")==false)
    {
        $("html, body").animate({ 
                    scrollTop: $('#mainMsg').offset().top 
                    }, 500);
      $("#mainMsg").html('<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><strong>Error!</strong> Please select address first!</div>');
  
     return false;
    }else
    {
        return true;
    }
    }
    /*============= Get single aaddress details for edit==========*/
    function get_one_address(val)
    {
      if(val!='')
      {
        $.post(base_url + 'user/dashboard/get-one-address',{'id':val},function(data){
             $("#name").val(data.name);
             $("#mobile").val(data.mobile);
             $("#country").val(data.country);
             $("#state").val(data.state);
             $("#city").val(data.city);
             $("#postal").val(data.pincode);
             $("#address1").val(data.address);
             $("#oneAddressForm").attr('action', base_url + 'user/dashboard/edit-address/'+ data.id);
        },'json');
      }
    }

$(function(){
/*================= Add Address===============*/
	$(document).on('submit','#addAddressForm',function(e){
		e.preventDefault();
		$.ajax({
			url:$("#addAddressForm").attr('action'),
			type:"POST",
			data:$("#addAddressForm").serialize(),
			dataType:'json',
			beforeSend:function()
			{
				$(".loading").css('display','inline');
			},
			success:function(data)
			{
				$("#addressMsg").fadeIn();
				$(".loading").css('display','none');
				if(data.SUCCESS=='OK')
				{
					 get_address();
					Swal.fire({
					position: 'right',
					type: 'success',
					title: 'Address added successfully....',
					showConfirmButton: false,
					timer: 1500
					});
                 $("#addressMsg").text('');
                 $("#addAddressForm")[0].reset();
                 $(window).scrollTop(0);

				}
				else
				{
					$("#addressMsg").html('<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><strong>Error!</strong> '+data.MSG+'</div>').fadeOut(5000);

					$("html, body").animate({ 
					scrollTop: $('#addressMsg').offset().top 
					}, 500);
				}
			}
		});
	});

/*============= Set address check value=============*/
	$(document).on('change','.addressRadio',function(){
		var address_id = $(this).val();
		if(address_id!='')
		{
			$("#address_id").val(address_id);
		}
	});

	/*=============== Change form url according to payment type=========*/
	$(document).on('change','.payment_mode',function(){
		var val = $(this).val();
		if(val==0)//Cash On Delivery Action Url
		{
         $("#paymentForm").attr('action', base_url + 'user/dashboard/cash-payment');
		}
		else//Online Payment Action Url
		{
      $("#paymentForm").attr('action', base_url + 'user/dashboard/online-payment');

		}
	});

/*====================== Add To Wish List========== */
$(document).on('click','.addWishlist',function(){
	var img = $(this).attr('data-img');
  var pid = $(this).attr('data-pid');
  var pname = $(this).attr('data-pname');
   var price = $(this).attr('data-price');
 $(".loading").css('display','inline');
 $.post(base_url + 'addto-wishlist' , {'pid':pid ,'pname':pname ,'price':price , 'img':img} , function(data){
 $(".loading").css('display','none');
  if(data.SUCCESS=='OK')
  {
  	$(window).scrollTop(0);
   total_wishlist_item();
   fetchwishlist_alldata();   
  }
  else
  {
     
  }
 },'json');
});	

/*================ Change Password============= */
$(document).on('submit','#changepasswordForm',function(e){
	e.preventDefault();
		$.ajax({
			url:$("#changepasswordForm").attr('action'),
			type:"POST",
			data:$("#changepasswordForm").serialize(),
			dataType:'json',
			beforeSend:function()
			{
				$(".loading").css('display','inline');
			},
			success:function(data)
			{
				$("#passwordMsg").fadeIn();
				$(".loading").css('display','none');
				if(data.SUCCESS=='OK')
				{
					$('#myModalPassword').modal('hide');
					Swal.fire({
					position: 'right',
					type: 'success',
					title: 'Password changed successfully....',
					showConfirmButton: false,
					timer: 2000
					});
                 $("#passwordMsg").text('');
                 $("#changepasswordForm")[0].reset();
				}
				else
				{
					$("#passwordMsg").html('<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><strong>Error!</strong> '+data.MSG+'</div>').fadeOut(5000);
				}
			}
		});
});	

/*=================== Edit single address=================*/
$(document).on('submit','#oneAddressForm',function(e){
	e.preventDefault();
		$.ajax({
			url:$("#oneAddressForm").attr('action'),
			type:"POST",
			data:$("#oneAddressForm").serialize(),
			dataType:'json',
			beforeSend:function()
			{
				$(".loading").css('display','inline');
				$("#adBtnBefore").css('display','none');
				$("#adBtnAfter").css('display','inline');
			},
			success:function(data)
			{
				$("#adBtnBefore").css('display','inline');
				$("#adBtnAfter").css('display','none');
				$("#addressMsg1").fadeIn();
				$(".loading").css('display','none');
				if(data.SUCCESS=='OK')
				{				
					Swal.fire({
					position: 'right',
					type: 'success',
					title: 'Address updated successfully....',
					showConfirmButton: false,
					timer: 1500
					});
                 $("#addressMsg1").text('');
                 $("#oneAddressForm")[0].reset();
                 setTimeout(function(){
    window.location.reload(); // you can pass true to reload function to ignore the client cache and reload from the server
},1500);
				}
				else
				{
					$("#addressMsg1").html('<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><strong>Error!</strong> '+data.MSG+'</div>').fadeOut(5000);
				}
			}
		});
});	

});