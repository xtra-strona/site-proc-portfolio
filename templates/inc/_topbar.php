 <div class="top-bar">
                <h1><?php echo $page->title; ?></h1>   
        <?php
                foreach($page->parents() as $item) {
                  echo "<p><a href='$item->url'>Home</a>";
                }
                // optionally output the current page as the last item
                 echo " / $page->title</p>"; ?>    
  </div>
