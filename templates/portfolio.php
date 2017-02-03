<?php include("./_head.php"); 
    $port_item = $page->children;?>

    <!-- Top bar -->
<?php include("./inc/_topbar.php"); ?>
    <!-- end Top bar -->
  <div class='m-t-min-2'></div>
    <!-- main container -->
    <div class="main-container portfolio-inner clearfix">
        <!-- portfolio div -->
        <div class="portfolio-div">
            <div class="portfolio">
                <!-- portfolio_filter -->
                <div class="categories-grid wow fadeInLeft">
                    <nav class="categories text-center">
                        <ul class="portfolio_filter">
                            <li><a href="" class="active" data-filter="*"><?php echo $page->port_filter_heading ? "$page->port_filter_heading" : "Wszystkie" ;?></a></li>
                                <?php 
                                $rep = $page->rep_port_filter;
                                    foreach( $rep as $key){
                                            $p = $key->pge_ref_s->name;
                                            $p_t = $key->pge_ref_s->title;
                                if ($p) {
                                    echo "<li><a href='' data-filter='.$p'>$p_t</a></li>"; 
                                  }
                                } ?>
<!-- <li><a href="" data-filter=".photography">Photography</a></li>
                            <li><a href="" data-filter=".logo">Logo</a></li>
                            <li><a href="" data-filter=".graphics">Graphics</a></li>
                            <li><a href="" data-filter=".ads">Advertising</a></li>
                            <li><a href="" data-filter=".fashion">Fashion</a></li>-->
                        </ul>
                    </nav>
                </div>
                <!-- portfolio_filter -->

                <!-- portfolio_container -->
                <div class="no-padding portfolio_container clearfix">
                    
    <?php  
        foreach($port_item as $port) {

       if($port->width->title !='') {
           $width = $port->width->title;
       } else {
           $width = "640";
       }
       
          if($port->quality->title) {
       
           $quality = $port->quality->title;
           
       } else {
           
           $quality = 100;
       } 
   //                 
if($port->images != '') {
           
$options = array(
'upscaling' => true,
 'cropping' => true,
 'quality' => $quality,
);  
      
      $img = $port->images->first()->size($width,'auto',$options)->url;
      
  } else {
      $img = "http://placehold.it/1000x1000";
  }
       
       
                     $col_md = $port->col_md->title;
                     $col_sm = $port->col_sm->title;
                     
                     $c = '';
                     $c_t = '';
                     
                     $port_cat = $port->port_cat_pages; ?>
                    <?php foreach ($port_cat as $cat) {
                   
                        $c .= $cat->name . ' ';
                        $c_t .= $cat->title . ' / ';
                    } ?>
                           
                    <!-- single work -->
                    <div class="<?= $col_md ? "$col_md" : "col-md-4"; ?> <?= $col_sm ? "$col_sm" : "col-sm-6"; ?>  <?=$c;?>">
                        <a href="<?=$port->url;?>" class="portfolio_item">
    <?php if($page->w_q_on->title == 'on') : ?>
           <h3 class="text-center text-danger"><?php echo 'Szerokość = ' . $width . 'px'; ?></h3>
           <h3 class="text-center text-danger"><?php echo 'Jakość= ' . $quality . '%';?></h3> 
    <?php endif ?>  
                            <img src="<?php echo $img;?>" alt="<?=$port->name;?>" class="img-responsive center-block" width='<?=$width?>' />
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span><?=$port->title;?></span>
                                        <em><?= rtrim($c_t, " / ");?></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                        <?php } ?>               
                </div>
                <!-- end portfolio_container -->
            </div>
            <!-- portfolio -->
        </div>
        <!-- end portfolio div -->
    </div>
    <!-- end main container -->
</div>
    <?php include("./_foot.php"); ?>