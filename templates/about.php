<?php include("./_head.php"); ?>
    <!-- Top bar -->
<?php include("./inc/_topbar.php"); ?>
    <!-- end Top bar -->
    <div class='m-t-min-4'></div>
    <!-- Main container -->
    <div class="container main-container clearfix"> 
        <div class="col-md-6">
            <img src="<?= $page->images->getRandom()->url;?>" class="img-responsive" alt="" />
        </div>
        <div class="col-md-6">
            <h3 class="uppercase"><?=$page->text_1;?></h3>
           <h5><?=$page->first_intro_txt;?></h5>
           <div class="h-30"></div>
           <?= $page->body; ?>
            <div class="h-10"></div>
            <ul class="social-ul">
                     <?php foreach ($pages->get("/opcje-strony/")->rep_social as $value) {
                   echo "<li class='box-social'><a href='$value->a_href' target='_blank'><i class='{$value->social_select->title}'></i></a></li>";
                    } ?>
            </ul>


        </div>
    </div>
    </div>
    <!-- end Main container -->
<?php include("./_foot.php"); ?>