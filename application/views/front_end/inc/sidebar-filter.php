    
    <div class="collection-filter-block creative-card creative-inner category-side">
        <!-- price filter start here -->
            <div class="collection-collapse-block border-0 open">
                <h3 class="collapse-block-title">price</h3>
                <div class="collection-collapse-block-content">
                    <div class="collection-brand-filter"  style="margin-top: 10px;">
                       

                        <?php
                        /*
                        for($price=10; $price<=1100; $price+=100)
                        {
                            if($price==10)
                            {
                                continue;
                            }
                            else
                            {
                                $v = (($price-10)*10).'-'.(($price-10)*100);
                           if(in_array($v, $this->input->get('price')??[]))
                           {
                             echo '<div class="custom-control custom-checkbox collection-filter-checkbox">
                            <input type="checkbox" class="custom-control-input comman-search-class" id="'.$price.'" value="'.(($price-10)*10).'-'.(($price-10)*100).'" name="price[]" checked>
                            <label class="custom-control-label" for="'.$price.'"><i class="fa fa-inr" aria-hidden="true"></i>'.(($price-10)*10).' - <i class="fa fa-inr" aria-hidden="true"></i>'.(($price-10)*100).'</label>
                        </div>';
                           }
                           else{     
                            echo '<div class="custom-control custom-checkbox collection-filter-checkbox">
                            <input type="checkbox" class="custom-control-input comman-search-class" id="'.$price.'" value="'.(($price-10)*10).'-'.(($price-10)*100).'" name="price[]">
                            <label class="custom-control-label" for="'.$price.'"><i class="fa fa-inr" aria-hidden="true"></i>'.(($price-10)*10).' - <i class="fa fa-inr" aria-hidden="true"></i>'.(($price-10)*100).'</label>
                        </div>';
                    }
                    }
                        }*/
                        ?>

                        <input type="number" name="min" placeholder="Min Price" class="form-control" value="<?= $this->input->get('min')??'';?>"  />
                           <input type="number" name="max" placeholder="Max Price" class="form-control" style="margin-top: 10px;" onblur="submit()" value="<?= $this->input->get('max')??'';?>"  />
                        
                        
                      
                    </div>
                </div>
            </div>
            <br>
            <!-- brand filter start -->
            <div class="collection-mobile-back"><span class="filter-back"><i class="fa fa-angle-left" aria-hidden="true"></i> back</span></div>
            <div class="collection-collapse-block open">
                <h3 class="collapse-block-title mt-0">brand</h3>
                <div class="collection-collapse-block-content">
                    <div class="collection-brand-filter">
                        <?php
                        foreach($brand as $bra)
                        {
                            if(in_array($bra['brandid'], $this->input->get('brand')??[]))
                            {
                            echo '<div class="custom-control custom-checkbox collection-filter-checkbox">
                            <input type="checkbox" class="custom-control-input comman-search-class" id="'.$bra['brandid'].'" value="'.$bra['brandid'].'" name="brand[]" checked="">
                            <label class="custom-control-label" for="'.$bra['brandid'].'">'.ucwords($bra['brand_name']).'</label>
                        </div>';
                            }
                            else
                            {
                        echo '<div class="custom-control custom-checkbox collection-filter-checkbox">
                            <input type="checkbox" class="custom-control-input comman-search-class" id="'.$bra['brandid'].'" value="'.$bra['brandid'].'" name="brand[]">
                            <label class="custom-control-label" for="'.$bra['brandid'].'">'.ucwords($bra['brand_name']).'</label>
                        </div>';
                    }
                    }
                    ?>

                        
                    </div>
                </div>
            </div>
             <!-- color filter start here -->
            <div class="collection-collapse-block open">
                <h3 class="collapse-block-title">colors</h3>
                <div class="collection-collapse-block-content">
                    <div class="collection-brand-filter">
                        <?php
                        foreach($color as $col)
                        {
                        if(in_array($col['varid'], $this->input->get('color')??[]))
                        {
                            echo '<div class="custom-control custom-checkbox collection-filter-checkbox">
                            <input type="checkbox" class="custom-control-input comman-search-class" id="'.$col['varid'].'" value="'.$col['varid'].'" name="color[]" checked="">
                            <label class="custom-control-label" for="'.$col['varid'].'">'.ucwords($col['data']).'</label>
                        </div>';
                        }
                        else
                        {
                        echo '<div class="custom-control custom-checkbox collection-filter-checkbox">
                            <input type="checkbox" class="custom-control-input comman-search-class" id="'.$col['varid'].'" value="'.$col['varid'].'" name="color[]">
                            <label class="custom-control-label" for="'.$col['varid'].'">'.ucwords($col['data']).'</label>
                        </div>';
                    }
                    }
                    ?>

                        
                    </div>
                </div>
            </div>

         
            
            
        </div>
        
