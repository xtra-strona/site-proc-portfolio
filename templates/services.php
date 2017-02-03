<?php include("./_head.php"); ?>

    <!-- Top bar -->
<?php include("./inc/_topbar.php"); ?>
    <!-- end Top bar -->
    <div class='hidden-sm hidden-xs m-t-min-9'></div>
    <div class='hidden-lg hidden-md m-t-min-4'></div>
    <div class="container main-container services">
        <div class="clearfix">
            <?php foreach ($page->rep_services as $value) {
           echo "<!-- service-box -->
                <div class='col-md-4 service-box'>
                <i class='$value->icon size-50'></i>
                <h3>$value->text_1</h3>
                <div class='h-10'></div>
                <p>$value->textarea_1</p>
            </div>
            <!-- end service-box -->";
            } ?>
        </div>
    </div>    
</div>
        <?php include("./_foot.php"); ?>