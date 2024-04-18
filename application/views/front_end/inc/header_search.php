<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script><div class="layout-header2">
  <div class="container">
    <div class="col-md-12">
      <div class="main-menu-block">
        <div class="sm-nav-block">
          <span class="sm-nav-btn"><i class="fa fa-bars"></i></span>
          <ul class="nav-slide">
            <li>
              <div class="nav-sm-back">
                back <i class="fa fa-angle-right pl-2"></i>
              </div>
            </li>
            <li><a href="#">western ware</a></li>
            <li><a href="#">TV, Appliances</a></li>
            <li><a href="#">Pets Products</a></li>
            <li><a href="#">Car, Motorbike</a></li>
            <li><a href="#">Industrial Products</a></li>
            <li><a href="#">Beauty, Health Products</a></li>
            <li><a href="#">Grocery Products </a></li>
            <li><a href="#">Sports</a></li>
            <li><a href="#">Bags, Luggage</a></li>
            <li><a href="#">Movies, Music </a></li>
            <li><a href="#">Video Games</a></li>
            <li><a href="#">Toys, Baby Products</a></li>
            <li class="mor-slide-open">
              <ul>
                <li><a href="#">Bags, Luggage</a></li>
                <li><a href="#">Movies, Music </a></li>
                <li><a href="#">Video Games</a></li>
                <li><a href="#">Toys, Baby Products</a></li>
              </ul>
            </li>
            <li>
              <a class="mor-slide-click">
                mor category
                <i class="fa fa-angle-down pro-down" ></i>
                <i class="fa fa-angle-up pro-up" ></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="logo-block">
          <a href="<?=base_url('/');?>"><img src="<?= base_url();?>assets/images/layout-1/logo/logo.png" class="img-fluid  " alt="logo"></a>
        </div>
        <div class="input-block">
          <div class="input-box">
            <form class="big-deal-form" action="<?= base_url('vihu-collection');?>" id="searchForm">
              <div class="input-group">
              <div class="input-group-prepend">
                  <span class="search" style="background: none;"><button type="submit" style="background: none; border: none; font-size: 20px;"><i class="fa fa-search"></i></button></span>
                </div>               
                <input type="text" class="form-control" placeholder="Search a Product" id="keywords" name="keywords" value="<?=

empty($this->input->get('keywords'))?' ':$this->input->get('keywords');
                ?>">
                <div class="input-group-prepend">
                    <select name="category" id="category1" onchange="reload()">
                      <option value="">All Category</option>
                      <?php
                       $cat = get_data('tbl_productcategories',[],'CategoryName ASC');
                      foreach($cat as $c1)
                      {
                        if($c1['CategoryName']==$this->input->get('category'))
                        {
                           echo '<option value='.$c1['CategoryName'].' selected="">'.$c1['CategoryName'].'</option>';
                        }else
                        {
                      echo '<option value='.$c1['CategoryName'].'>'.$c1['CategoryName'].'</option>';
                    }
                      }
                      ?>
                     
                 
                    </select>
                  </div>
               
               
              </div>
            </form>
          </div>
        </div>
        <div class="cart-block cart-hover-div ">
          <div class="cart ">
            <span class="cart-product cartNum"></span>
            <ul>
              <li class="mobile-cart  ">
                <a href="<?= base_url('viewcart');?>">
                  <i class="icon-shopping-cart "></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="cart-item">
            <h5>shopping</h5>
            <h5>cart</h5>
          </div>
        </div>
        <div class="menu-nav">
            <span class="toggle-nav">
              <i class="fa fa-bars "></i>
            </span>
        </div>
      </div>
    </div>
  </div>
</div>
