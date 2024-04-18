<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
/*
$route['default_controller'] = 'Front';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['contact-us'] = 'Front/contact';
$route['login'] = 'Front/login';
$route['sign-up'] = 'Front/signup';
$route['forget-pwd'] = 'Front/forget_pwd';
$route['about-us'] = 'Front/about';
$route['service'] = 'Front/service';
$route['gallery'] = 'Front/gallery';*/


$route['default_controller'] = 'Front';
$route['404_override'] = '';
$route['user/dashboard'] = 'Front';
$route['translate_uri_dashes'] = FALSE;
$route['contact-us'] = 'Front/contact';
$route['login'] = 'Front/login';
$route['sign-up'] = 'Front/signup';
$route['forget-pwd'] = 'Front/forget_pwd';
$route['order-success'] = 'Front/order_success';
$route['dashboard'] = 'Front/dashboard';
$route['order-history'] = 'Front/order_history';
$route['wishlist'] = 'Front/wishlist';
$route['viewcart'] = 'Front/cart';
$route['profile'] = 'Front/profile';
$route['check-out'] = 'Front/checkout';
$route['404'] = 'Front/error';
$route['vihu-collection'] = 'Front/vihu_collection';
$route['product-detail/(:any)/(:any)'] = 'Front/product_detail/$1/$2';
$route['logout'] = 'Front/logout';
$route['verify-email'] = 'FrontAjax/verify_email';
$route['email-verified'] = 'Front/email_verified';
$route['forget-password'] = 'FrontAjax/forget_password';
$route['new-password'] = 'Front/new_password';
$route['update-password/(:any)/(:any)'] = 'FrontAjax/update_password/$1/$2';
$route['contact-send'] = 'FrontAjax/contact_action';
$route['review-action'] = 'FrontAjax/review_action';
$route['terms-condition'] = 'Front/master';
$route['about-us'] = 'Front/master';
$route['faq'] = 'Front/master';
$route['returns'] = 'Front/master';
$route['shipping'] = 'Front/master';

/*==================== After User Login===========*/
$route['user/dashboard/check-out'] = 'UserAccount/checkout';
$route['getAddress'] = 'UserAccount/get_address';
$route['user/dashboard/cash-payment'] = 'UserAccountAjax/cash_payment';
$route['user/dashboard/online-payment'] = 'PaymentGateway/online_payment';
$route['user/dashboard/response'] = 'PaymentGateway/response';
$route['user/dashboard/payment-success'] = 'UserAccount/payment_success';
$route['user/dashboard/payment-failure'] = 'UserAccount/payment_failure';
$route['user/dashboard/wishlist'] = 'UserAccount/wishlist';
$route['user/dashboard/my-account'] = 'UserAccount/my_account';
/*==================== After User Login Ajax===========*/
$route['get-location'] = 'UserAccountAjax/get_location';
$route['user/dashboard/addAddress'] = 'UserAccountAjax/add_address';
$route['user/dashboard/orders'] = 'UserAccount/orders';
$route['addto-wishlist'] = 'UserAccountAjax/addto_wishlist';
$route['total-wishlist-item'] = 'UserAccountAjax/total_item_wishlist';
$route['fetchwishlist-alldata'] = 'UserAccountAjax/fetchwishlist_alldata';
$route['user/dashboard/change-password'] = 'UserAccountAjax/change_password';
$route['user/dashboard/get-one-address'] = 'UserAccountAjax/get_one_address';
$route['user/dashboard/edit-address/(:num)'] = 'UserAccountAjax/edit_address/$1';
/*==================== After User Login Delete Routes===========*/
$route['user/dashboard/delete/(:any)/(:num)'] = 'UserAccountAction/delete/$1/$2';
$route['user/dashboard/update-profile'] = 'UserAccountAction/update_profile';
$route['user/dashboard/update-profileimage'] = 'UserAccountAction/update_profileimage';

/*=================== Front End Ajax================*/
$route['quick-view-get'] = 'FrontAjax/quick_view_get';
$route['addto-cart'] = 'FrontAjax/addto_cart';
$route['fetchcart-data'] = 'FrontAjax/fetchcart_data';
$route['fetchcart-alldata'] = 'FrontAjax/fetchcart_alldata';
$route['deletecart-data'] = 'FrontAjax/deletecart_data';
$route['updatecart-data'] = 'FrontAjax/updatecart_data';
$route['send-otp'] = 'FrontAjax/send_otp';
$route['check-otp'] = 'FrontAjax/verify_otp';
$route['registerUser'] = 'FrontAjax/user_register';
$route['verifyLogin'] = 'FrontAjax/verify_login';
$route['search-data'] = 'FrontAjax/search_data';

/*======================= Admin Routes===============*/
$route['admin'] = 'Login_panel/login';
$route['admin/dashboard'] = 'AdminPanel/dashboard';
$route['admin/change-password'] = 'AdminPanel/change_pass';
$route['admin/category'] = 'AdminPanel/category';
$route['admin/sub-category'] = 'AdminPanel/sub_category';
$route['admin/product-list'] = 'AdminPanel/product_list';
$route['admin/product-details/(:any)/(:num)'] = 'AdminPanel/product_detail/$1/$2';
$route['admin/add-product'] = 'AdminPanel/add_product';
$route['admin/brand'] = 'AdminPanel/brand';
$route['admin/edit-images/(:any)'] = 'AdminPanel/edit_images/$1';
$route['admin/all-variation/(:any)'] = 'AdminPanel/all_variation/$1';
$route['admin/cms'] = 'AdminPanel/cms';
$route['admin/cms-editor/(:any)'] = 'AdminPanel/cms_editor/$1';
$route['admin/offer-modal'] = 'AdminPanel/offer_modal';
$route['admin/all-orders'] = 'AdminPanel/all_orders';
$route['admin/order-details/(:num)'] = 'AdminPanel/order_details/$1';
$route['admin/add-slider'] = 'AdminPanel/add_slider';
$route['admin/transaction-details/(:num)'] = 'AdminPanel/transaction_details/$1';
$route['admin/invoice/(:num)'] = 'AdminPanel/invoice/$1';

$route['admin/add-page/(:any)'] = 'AdminPanel/add_page/$1';
$route['admin/manage-page'] = 'AdminPanel/manage_page';


/*================== Admin Action Routes===============*/
$route['admin/update-category'] = 'AdminAction/update_category';//Update Main Category

$route['admin/delete/(:any)/(:num)'] = 'AdminAction/delete/$1/$2';
$route['admin/subcat-insert'] = 'AdminAction/subcat_insert';
$route['admin/update-subcategory'] = 'AdminAction/update_subcategory';//Update Main Category
$route['admin/insert-brand'] = 'AdminAction/insert_brand';
$route['admin/update-product/(:num)'] = 'AdminAction/update_product/$1';
$route['admin/insert-variation/(:num)'] = 'AdminAction/insert_variation/$1';
$route['admin/add-qty'] = 'AdminAction/add_qty';
$route['admin/delete-product/(:num)/(:any)'] = 'AdminAction/delete_product/$1/$2';
$route['admin/updateshipping-status/(:num)'] = 'AdminAction/updateshipping_status/$1';
$route['admin/updateorder-status/(:num)'] = 'AdminAction/updateorder_status/$1';

/*================== Admin Ajax Routes===============*/
$route['admin/insert-category'] = 'AdminAjax/insert_category';
$route['admin/get-category'] = 'AdminAjax/get_category';
$route['admin/get-subcategory'] = 'AdminAjax/get_subcategory';
$route['admin/uploadimg-product'] = 'AdminAjax/uploadimg_product';
$route['admin/delete-img'] = 'AdminAjax/delete_prod_img';
$route['admin/insert-product'] = 'AdminAjax/insert_product';
$route['admin/get-product-details'] = 'AdminAjax/get_product_details';
$route['admin/insert-slider'] = 'AdminAjax/insert_slider';
$route['admin/manage-slider'] = 'AdminPanel/manage_slider';

$route['admin/insert-pagetext'] = 'AdminAjax/insert_pagetext';







