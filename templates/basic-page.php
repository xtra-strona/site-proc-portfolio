<?php

include('./_head.php'); // include header markup ?>
    <!-- Top bar -->
<?php include("./inc/_topbar.php"); ?>

<div class='col-lg-12'>
<div class='row'>

	<div id='content'><?php

		// output 'headline' if available, otherwise 'title'
		echo "<h1>" . $page->get('headline|title') . "</h1>";

		// output bodycopy
		echo $page->body;

	?></div><!-- end content -->
    </div>
</div>

</div>
<?php include('./_foot.php'); // include footer markup ?>
