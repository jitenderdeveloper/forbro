<!--slider start-->
<section class="theme-slider b-g-white " id="theme-slider">
  <div class="container-fluid">
    <div class="row">
      <div class="col" style="padding-right: 0px!important; padding-left: 0px!important;">
        <div class="slide-1 no-arrow" > 

           <?php
           $i=0;
           foreach($sliders as $sl)
           {

          echo '<div>
            <div class="slider-banner p-center slide-banner-1" >
              <div class="slider-img" >
                <ul class="layout1-slide-2">
                
                   <img src="'.base_url('assets/uploads/admin/slider/'.$sl['imgpath']).'" class="img-fluid" alt="slider">
                 
                 
                </ul>
              </div>
              
            </div>
          </div>';
          
        }
        ?>

        </div>
      </div>
    </div>
  </div>
</section>
<!--slider end-->