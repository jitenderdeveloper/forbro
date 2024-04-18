  <?php
    foreach($items as $it)
    {
      echo '<li>
          <div class="media">
            <a href="#">
              <img alt="" class="mr-3" src="'.base_url('assets/uploads/admin/product/').$it['image_path'].'">
            </a>
            <div class="media-body">
              <a href="#">
                <h4>item name</h4>
              </a>
              <h4>
                <span>sm</span>
                <span>, blue</span>
              </h4>
              <h4>
                <span><i class="fa fa-inr" aria-hidden="true"></i> 299.00</span>
              </h4>
            </div>
          </div>
          <div class="close-circle">
            <a href="#">
              <i class="ti-trash" aria-hidden="true"></i>
            </a>
          </div>
        </li>';
    }
  ?>  
        