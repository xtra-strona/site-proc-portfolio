<?php namespace ProcessWire;
         include("./_head.php"); ?>

<!-- box-intro -->
        <section class="box-intro">
            <div class="table-cell">
                <h1 class="box-headline letters rotate-2">
                    
                    <span class="box-words-wrapper">
                        <b class="is-visible"><?=$page->first_intro_txt;?></b>
                        
                        <?php foreach ($page->rep_intro as $value) {
                            echo "<b>{$value->text_1}</b>";
                        } ?>
 
                    </span>
                    
		        </h1>
                <h5><?=$page->last_intro_txt;?></h5>
                
            </div>

            <div class="mouse">
                <div class="scroll"></div>
            </div>
        </section>
        <!-- end box-intro -->
    </div>
    <div class='pt-10'></div>
    <!-- portfolio div -->
    <div class="portfolio-div">
        <div class="portfolio">
            <div class="no-padding portfolio_container">
<?php $h_r = $page->home_rep;
   foreach ($h_r as $value) {
       
// $options = array(
//  'quality' => 90,
//  'upscaling' => false,
//  'cropping' => 'southeast'
//);
//$img = $image->size($x, $y, $options); 
        
       $width = '';
       
       if($value->width_home->title !='') {
           $width = $value->width_home->title;
       } else {
           $width .= "600";
       }

    $title_p = $value->page_ref_port->title;
    $name_p = $value->page_ref_port->name;
    $url_p = $value->page_ref_port->url;
    
   $col_lg = $value->col_lg->title;
   $col_md = $value->col_md->title;
   $col_sm = $value->col_sm->title;
 
    $p_c = ''; 
    $p_n = ''; 
    
   if($value->quality->title) {
       
           $quality = $value->quality->title;
           
       } else {
           
           $quality = 100;
       }  ?>
                                    
    <?php $child_p = $pages->get("/portfolio/")->children->find("name=$name_p");
 foreach ($child_p as $value) {
   
  if($value->images != '') {
           
$options = array(
 'upscaling' => false,
 'cropping' => false,
 'quality' => $quality,
);  
      
      $img = $value->images->first()->size($width,'auto',$options)->url;
      
  } else {
      $img = "http://placehold.it/1000x1000";
  }

      $port_p = $value->port_cat_pages; 
      
     foreach ($port_p as $value) {
         $p_c .= $value->title . ' / ';
         $p_n .= $value->name . ' ';
      }
      
 } ?>              
   
    <!-- single work -->
   <div class="<?php echo $col_lg ? "$col_lg" : "col-lg-4";?> <?php echo $col_md ? "$col_md" : "col-md-4";?> <?php echo $col_sm ? "$col_sm" : "col-sm-6";?> col-xs-12  <?=$p_n;?>">
       <a href="<?=$url_p;?>" class="portfolio_item">
           
    <?php if($page->w_q_on->title == 'on') : ?>
           <h3 class="text-center text-danger"><?php echo 'Szerokość = ' . $width . 'px'; ?></h3>
           <h3 class="text-center text-danger"><?php echo 'Jakość= ' . $quality . '%';?></h3> 
    <?php endif ?>  
           
           <img src="<?=$img?>" alt="image" class="img-responsive" />
           <div class="portfolio_item_hover">
               <div class="portfolio-border clearfix"> 
                   <div class="item_info">
                       <span><?=$title_p;?></span>
                       <em><?= rtrim($p_c, " / ");?></em>
                   </div>
               </div>
           </div>
       </a>
   </div>
   <!-- end single work -->     
  
<?php } ?>

                <!-- end single work -->
            </div>
            <!-- end portfolio_container -->
        </div>
        <!-- portfolio -->
    </div>
    <!-- end portfolio div -->
<?php include("./_foot.php"); ?>
    