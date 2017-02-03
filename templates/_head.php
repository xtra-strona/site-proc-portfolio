<?php namespace ProcessWire;

    if($pages->get("/opcje-strony/")->favicon) {
    $fav = $pages->get("/opcje-strony/")->favicon;
    $fav_s = $fav->size(86,'auto');
//    $fav_w = $fav_s->width; 
//    $fav_h = $fav_s->height; 
    $favicon_url = $fav_s->url; 
    } else {
        $favicon_url = $config->urls->templates . "box-assets/img/fav.png";
    } ?>
<!DOCTYPE html>
<html lang="<?php echo _x('pl', 'HTML language code'); ?>">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php echo $page->title; ?></title>
    <meta name="description" content="<?php echo $page->summary; ?>" />
    <link rel="icon" href="<?= $favicon_url; ?>" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="<?php echo $config->urls->templates?>box-assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo $config->urls->templates?>box-assets/ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- main css -->
    <link href="<?php echo $config->urls->templates?>box-assets/css/style.css" rel="stylesheet">
    <!--<link href="<?php // echo $config->urls->templates?>box-assets/css/dark-blue.css" rel="stylesheet">-->
    	<?php 	// handle output of 'hreflang' link tags for multi-language
		// this is good to do for SEO in helping search engines understand
		// what languages your site is presented in
		foreach($languages as $language) {
			// if this page is not viewable in the language, skip it
			if(!$page->viewable($language)) continue;
			// get the http URL for this page in the given language
			$url = $page->localHttpUrl($language);
			// hreflang code for language uses language name from homepage
			$hreflang = $homepage->getLanguageValue($language, 'name');
			// output the <link> tag: note that this assumes your language names are the same as required by hreflang.
			echo "\n\t<link rel='alternate' hreflang='$hreflang' href='$url' />";
		}?>
<style>
<?php if($page->images !='') { ?> 
                body {
                   background-color: #bdb2b280;
                }
                .top-bar, .box-intro {
            color: #333;
            padding: 150px 0 150px;
            background: -webkit-linear-gradient( rgb(29, 112, 228), rgba(255, 255, 255, .8)), url(<?=$page->images->getRandom()->url;?>);
            background: linear-gradient( rgba(10, 7, 7, 0.8), rgba(154, 32, 32, 0.8)), url(<?=$page->images->getRandom()->url;?>);
            background-size: cover;
            background-attachment: fixed;
            background-position: center center;
            text-align: center;
        }
<?php } ?>
.cont-form .error {color: #FF0000;}
.form-nagl ul li{
    list-style: none;
}

.box-primary-nav-trigger span {
    color: aliceblue !important;
}
.pt-10 {
padding-top: 2px;
}

.contact-page {
    background-color: #070b2a;
}
.cont-form .input-contact {
    border: 1px solid #0f615c;
    background-color: #0c0d33;
}
.cont-form .textarea-contact {
        border: 1px solid #0f615c;
    background-color: #0c0d33;
}

.cont-form .btn-box {
background: rgba(255, 191, 0, 0) !important;
border: 1px solid #7e7e0b;
transition: all .3s ease;
}
.cont-form .btn-box:hover {
    background: rgb(110, 19, 5) !important;
}

.pt-2 {
padding-top: 2rem;
}


.m-t-min-9 {
    margin-top: -9rem;
}
.m-t-min-4 {
    margin-top: -4rem;
}
.m-t-min-2 {
    margin-top: -2rem;
}
/*Logo Menu*/
/*.box-logo {
    background-color: #100430;
}
.box-primary-nav-trigger span{
    color: aliceblue !important;
}*/

/*Box INTRO*/
.table-cell {
    background-color: #02355ab3;
    padding: 2rem 0;
    border: 12px solid #22283b4d;
}
.table-cell h1{
color: #c5f505;
}
.table-cell h5 {
    color: aliceblue;
}
footer {
    background-color: #072d4a;
    margin-top: 1rem;
}
    

/*LANGUAGES*/
.languages {
        margin-top: -20px;
        float:left;
}
.languages li {
        list-style: none;
        float: left;
        padding-right: 1rem;
}
.languages a {
        width: 50px;
        height: 50px;
        transition: all .3s ease-in-out;
}
        .languages .img-pl {
                background-image: url("<?php echo $options->img_pl->url; ?>");
                width:  50px;
                height: 50px;
                display:inline-block;
                font-size: 0;
                transition: all .3s ease-in-out;
        }
          .languages .img-pl:hover {
                width: 70px;
                height: 70px;
  }
.languages .img-en {
                background-image: url("<?php echo $options->img_en->url; ?>");
                width: 50px;
                height: 50px;
                display:inline-block;
                font-size: 0;
                transition: all .3s ease-in-out;
  }
  
  .languages .img-en:hover {
                width: 70px;
                height: 70px;
  }
</style>


    <!-- modernizr -->
    <script src="<?php echo $config->urls->templates?>box-assets/js/modernizr.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <!-- Preloader -->
    <div id="preloader">
        <div class="pre-container">
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
        </div>
    </div>
    <!-- end Preloader -->
    <?php 
    if($pages->get("/opcje-strony/")->logo) {
    $logo = $pages->get("/opcje-strony/")->logo;
    $logo_s = $logo->size(80,'auto');
//    $logo_w = $logo_s->width; 
//    $logo_h = $logo_s->height; 
    $logo_url = $logo_s->url;
    
    } else {
        $logo_url = $config->urls->templates . "box-assets/img/logo.png";
    } ?>
  
    <div class="head container-fluid">
        <!-- box header -->
        <header class="box-header">
            <div class="box-logo">
                <a href="<?php echo $config->urls->root; ?>">
                    <img src="<?=$logo_url?>" width="80" alt="Logo">
                </a>
                       	<!-- language switcher / navigation -->
<ul class='languages' role='navigation'>
	<?php
	foreach($languages as $language) {
		if(!$page->viewable($language)) continue; // is page viewable in this language?
		if($language->id == $user->language->id) {
			echo "<li class='current'>";
		} else {
			echo "<li>";
		}
		$url = $page->localUrl($language);
		$hreflang = $homepage->getLanguageValue($language, 'name');
		echo "<a  class='img-$hreflang' hreflang='$hreflang' href='$url'>$language->title</a></li>";
	}
?></ul> 
            </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box header -->

        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
                <li class="box-label"><?= $pages->get("/opcje-strony/")->menu_opis; ?></li>

                <?php

		// top navigation consists of homepage and its visible children
		$homepage = $pages->get('/'); 
		$children = $homepage->children();

		// make 'home' the first item in the navigation
		$children->prepend($homepage); 

		// render an <li> for each top navigation item
		foreach($children as $child) {
			if($child->id == $page->rootParent->id) {
				// this $child page is currently being viewed (or one of it's children/descendents)
				// so we highlight it as the current page in the navigation
				echo "<li class='current'><a href='$child->url'>$child->title</a><i class='ion-ios-circle-filled color'></i></li>";
			} else {
				echo "<li><a href='$child->url'>$child->title</a></li>";
			}
		}

		// output an "Edit" link if this page happens to be editable by the current user
		if($page->editable()) {
			echo "<li class='edit'><a href='$page->editUrl'>Edit</a></li>";
		}

	?>
                <li class="box-label"><?= $pages->get("/opcje-strony/")->social_text; ?></li>
                <?php foreach ($pages->get("/opcje-strony/")->rep_social as $value) {
                   echo "<li class='box-social'><a href='$value->a_href' target='_blank'><i class='{$value->social_select->title}'></i></a></li>";
                    } ?>
            </ul>
        </nav>
        <!-- end nav -->   

        