        <!-- footer start-->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 footer-copyright">
                        <p class="mb-0">Copyright <?=date('Y');?> © VihuStore All rights reserved.</p>
                    </div>
                    <div class="col-md-6">
                        <p class="pull-right mb-0">Made By Pious It Services Private Limited</p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer end-->
    </div>

</div>
<script type="text/javascript">
    var base_url = "<?php echo base_url();?>";
</script>
<!-- latest jquery-->
<script src="<?= base_url();?>assets/js/jquery-3.3.1.min.js"></script>

<!-- Bootstrap js-->
<script src="<?= base_url();?>assets/js/popper.min.js"></script>
<script src="<?= base_url();?>assets/js/bootstrap.js"></script>

<!-- feather icon js-->
<script src="<?= base_url();?>assets/js/icons/feather-icon/feather.min.js"></script>
<script src="<?= base_url();?>assets/js/icons/feather-icon/feather-icon.js"></script>

<!-- Sidebar jquery-->
<script src="<?= base_url();?>assets/js/sidebar-menu.js"></script>

<!-- Touchspin Js-->
<script src="<?= base_url();?>assets/js/touchspin/vendors.min.js"></script>
<script src="<?= base_url();?>assets/js/touchspin/touchspin.js"></script>
<script src="<?= base_url();?>assets/js/touchspin/input-groups.min.js"></script>

<!-- Rating Js-->
<script src="<?= base_url();?>assets/js/rating/jquery.barrating.js"></script>
<script src="<?= base_url();?>assets/js/rating/rating-script.js"></script>

<!-- Owlcarousel js-->
<script src="<?= base_url();?>assets/js/owlcarousel/owl.carousel.js"></script>
<script src="<?= base_url();?>assets/js/dashboard/product-carousel.js"></script>


<!--chartist js-->
<script src="<?= base_url();?>assets/js/chart/chartist/chartist.js"></script>

<!-- Jsgrid js-->
<script src="<?= base_url();?>assets/js/jsgrid/jsgrid.min.js"></script>
<script src="<?= base_url();?>assets/js/jsgrid/griddata-manage-product.js"></script>
<script src="<?= base_url();?>assets/js/jsgrid/jsgrid-manage-product.js"></script>

<!-- lazyload js-->
<script src="<?= base_url();?>assets/js/lazysizes.min.js"></script>

<!--copycode js-->
<script src="<?= base_url();?>assets/js/prism/prism.min.js"></script>
<script src="<?= base_url();?>assets/js/clipboard/clipboard.min.js"></script>
<script src="<?= base_url();?>assets/js/custom-card/custom-card.js"></script>

<!--counter js-->
<script src="<?= base_url();?>assets/js/counter/jquery.waypoints.min.js"></script>
<script src="<?= base_url();?>assets/js/counter/jquery.counterup.min.js"></script>
<script src="<?= base_url();?>assets/js/counter/counter-custom.js"></script>

<!--map js-->
<script src="<?= base_url();?>assets/js/vector-map/jquery-jvectormap-2.0.2.min.js"></script>
<script src="<?= base_url();?>assets/js/vector-map/map/jquery-jvectormap-world-mill-en.js"></script>

<!--apex chart js-->
<script src="<?= base_url();?>assets/js/chart/apex-chart/apex-chart.js"></script>
<script src="<?= base_url();?>assets/js/chart/apex-chart/stock-prices.js"></script>

<!--chartjs js-->
<script src="<?= base_url();?>assets/js/chart/flot-chart/excanvas.js"></script>
<script src="<?= base_url();?>assets/js/chart/flot-chart/jquery.flot.js"></script>
<script src="<?= base_url();?>assets/js/chart/flot-chart/jquery.flot.time.js"></script>
<script src="<?= base_url();?>assets/js/chart/flot-chart/jquery.flot.categories.js"></script>
<script src="<?= base_url();?>assets/js/chart/flot-chart/jquery.flot.stack.js"></script>
<script src="<?= base_url();?>assets/js/chart/flot-chart/jquery.flot.pie.js"></script>
<!--dashboard custom js-->
<script src="<?= base_url();?>assets/js/dashboard/default.js"></script>

<!--right sidebar js-->
<script src="<?= base_url();?>assets/js/chat-menu.js"></script>

<!--height equal js-->
<script src="<?= base_url();?>assets/js/equal-height.js"></script>

<!-- lazyload js-->
<script src="<?= base_url();?>assets/js/lazysizes.min.js"></script>
<!-- Datatable js-->
<script src="<?= base_url();?>assets/js/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url();?>assets/js/datatables/custom-basic.js"></script>
<!--ck editor-->
<script src="<?= base_url();?>assets/js/editor/ckeditor/ckeditor.js"></script>
<script src="<?= base_url();?>assets/js/editor/ckeditor/styles.js"></script>
<script src="<?= base_url();?>assets/js/editor/ckeditor/adapters/jquery.js"></script>
<script src="<?= base_url();?>assets/js/editor/ckeditor/ckeditor.custom.js"></script>
<!--script admin-->
<script src="<?= base_url();?>assets/js/admin-script.js"></script>
<script type="text/javascript" src="<?= base_url('assets/comman_js/');?>admin_js.js?v=<?= time();?>"></script>
<script type="text/javascript">
      $(function () {
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        CKEDITOR.replace('editor1')
        //bootstrap WYSIHTML5 - text editor
        $('.textarea').wysihtml5()
      })

    </script>

</body>
</html>
