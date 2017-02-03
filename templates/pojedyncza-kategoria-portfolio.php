<?php include("./_head.php"); 
$img = $page->images;
$tit = $page->title;
$child_n = $page->name;?>
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
        
            <div class="col-md-12">
            <h3 class="text-uppercase"><?php echo $page->title; ?></h3>
            <h5><?php echo $page->headline; ?></h5>
            <div class="h-30"></div>
        </div>

        <div class="col-md-9">
            <?php echo $page->body; ?>
        </div>
    


    <!-- main-container -->
    <div class="container main-container">
        <div class='row'>
            
        
            <?php $child = $pages->get("/portfolio/")->children->find("port_cat_pages.name=$child_n"); ?>
            <?php foreach ($child as $value) {
                echo "<div class='col-lg-3 col-md-3'>";
                echo "<a href='{$value->url}'><h5 class='text-center'>$value->title</h5></a>";
                echo "<a href='{$value->url}'><img class='img-responsive' src ='{$value->images->first()->url}'/></a>";
                echo "</div>";
            } ?>
        
   
        </div>
        
            <div class="h-30"></div>
    </div>
    <!-- end main-container -->
    
    </div>
     <!-- end main-container -->
    <?php include("./_foot.php"); ?>
