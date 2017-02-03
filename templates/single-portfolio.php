<?php include("./_head.php"); 
$img = $page->images;?>
    <!-- Top bar -->
<?php // include("./inc/_topbar.php"); ?>
     <div class="top-bar">
                <h1><?php echo $page->title; ?></h1>
                
                <p>
                    <a href="<?php echo $page->parent()->url;?>">
                        <?php echo $page->parent()->title;?>    
                    </a> 
                <?php echo " / $page->title";?></p> 
    </div>
    <!-- end Top bar -->

    <!-- main-container -->
    <div class="container main-container">
        <div class="col-md-12">
    
            <img src="<?php echo $img->getRandom()->url  ?>" alt="<?=$page->name;?>" class="img-responsive" />
            
            <div class="h-30"></div>
        </div>

        <div class="col-md-12">
            <h3 class="text-uppercase"><?php echo $page->title; ?></h3>
            <h5><?php echo $page->headline; ?></h5>
            <div class="h-30"></div>
        </div>

        <div class="col-md-9">
            <?php echo $page->body; ?>
        </div>

        <div class="col-md-3">
            <ul class="cat-ul">
                <?php $cat = $page->port_cat_pages;
 foreach ($cat as $value) {
     echo "<li><i class='ion-ios-circle-filled'></i><a href='$value->url'>$value->title</a></li>";
 }
                ?>   
            </ul>
            <div class="h-10"></div>
            <h4>Udostępnij</h4>
            <!-- AddToAny BEGIN -->
<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
<a class="a2a_dd" href="https://www.addtoany.com/share"></a>
<a class="a2a_button_facebook"></a>
<a class="a2a_button_twitter"></a>
<a class="a2a_button_google_plus"></a>
</div>
<script>
var a2a_config = a2a_config || {};
a2a_config.locale = "pl";
</script>
<script async src="https://static.addtoany.com/menu/page.js"></script>
<!-- AddToAny END -->
<!--            <ul class="social-ul">
                <li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
            </ul>
        </div>-->
    </div>
    <!-- end main-container -->
    
     </div>   
        </div>
    <?php include("./_foot.php"); ?>
