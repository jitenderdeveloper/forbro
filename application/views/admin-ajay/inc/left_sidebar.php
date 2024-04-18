<!-- Page Sidebar Start-->
<div class="page-sidebar">
    <div class="sidebar custom-scrollbar">
        <div class="sidebar-user text-center">
            <div><img class="img-60 rounded-circle lazyloaded blur-up" src="<?=base_url();?>assets/images/dashboard/man.png" alt="#">
            </div>
            <h6 class="mt-3 f-14">Admin</h6>
            <p>Panel</p>
        </div>
        <ul class="sidebar-menu">
            <li><a class="sidebar-header" href="<?=base_url('admin/dashboard');?>"><i data-feather="home"></i><span>Dashboard</span></a></li>
            <li><a class="sidebar-header" href="<?=base_url('admin/cms');?>"><i data-feather="plus"></i><span>CMS</span></a></li>
            <li><a class="sidebar-header" href="#"><i data-feather="box"></i> <span>Products</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                    <li><a href="<?=base_url('admin/category');?>"><i class="fa fa-circle"></i>Category</a></li>
                    <li><a href="<?=base_url('admin/sub-category');?>"><i class="fa fa-circle"></i>Sub Category</a></li>
                      <li><a href="<?=base_url('admin/brand');?>"><i class="fa fa-circle"></i>Brand</a></li>
                    <li><a href="<?=base_url('admin/product-detail');?>"><i class="fa fa-circle"></i>Product Detail</a></li>
                    <li><a href="<?=base_url('admin/add-product');?>"><i class="fa fa-circle"></i>Add Product</a></li>
                    <li><a href="<?=base_url('admin/product-list');?>"><i class="fa fa-circle"></i>All Product</a></li>
                </ul>
            </li>

            <li><a class="sidebar-header" href=""><i data-feather="user-plus"></i><span>Users</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                    <li><a href="#"><i class="fa fa-circle"></i>User List</a></li>
                    <li><a href="#"><i class="fa fa-circle"></i>Create User</a></li>
                </ul>
            </li>

            <li><a class="sidebar-header" href="<?=base_url('admin/offer-modal');?>"><i data-feather="plus"></i><span>Offer Modal</span></a></li>

            <li><a class="sidebar-header" href="<?=base_url('admin/change-password');?>"><i data-feather="edit"></i><span>Change  Password</span></a></li>

            <li><a class="sidebar-header" href="<?=base_url('Admin_panel/logout');?>"><i data-feather="log-in"></i><span>Log Out</span></a>
            </li>
        </ul>
    </div>
</div>
<!-- Page Sidebar Ends-->