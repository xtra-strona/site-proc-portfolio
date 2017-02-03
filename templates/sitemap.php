<?php

include("./_head.php"); ?>
    <!-- Top bar -->
<?php include("./inc/_topbar.php"); ?>
    
<div class='col-lg-12'>
<div class='row'>

	<?php 
	
	$maxDepth = 1; 
	renderNavTree($pages->get('/'), $maxDepth); 
	// see the _init.php for the renderNavTree function
	
	?>

</div><!-- end content -->
    </div> 
</div>
        
</div>
<?php include("./_foot.php"); ?>
