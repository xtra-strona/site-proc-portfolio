    <!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright">© <?=$pages->get("/opcje-strony/")->copy_right;?> <?= date('Y'); ?></p>
        </div>
    </footer>
    <!-- end footer -->

    <!-- back to top -->
    <a href="#0" class="cd-top"><i class="ion-android-arrow-up"></i></a>
    <!-- end back to top -->
		<?php
		// if($user->isLoggedin()) {
		// 	// if user is logged in, show a logout link
		// 	echo "<a href='{$config->urls->admin}login/logout/'>Logout ($user->name)</a>";
		// } else {
		// 	// if user not logged in, show a login link
		// 	echo "<a href='{$config->urls->admin}'>Admin Login</a>";
		// }?>
    <!-- jQuery -->
    <script src="<?php echo $config->urls->templates; ?>box-assets/js/jquery-2.1.1.js"></script>
    <!--  plugins -->
    <script src="<?php echo $config->urls->templates; ?>box-assets/js/bootstrap.min.js"></script>
    <script src="<?php echo $config->urls->templates; ?>box-assets/js/menu.js"></script>
    <script src="<?php echo $config->urls->templates; ?>box-assets/js/animated-headline.js"></script>
    <script src="<?php echo $config->urls->templates; ?>box-assets/js/isotope.pkgd.min.js"></script>


    <!--  custom script -->
    <script src="<?php echo $config->urls->templates; ?>box-assets/js/custom.js"></script>

</body>

</html>
