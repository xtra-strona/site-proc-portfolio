<?php namespace ProcessWire;
 include("./_head.php");
 include("./inc/_email.php"); ?>

    <!-- Top bar -->
<?php include("./inc/_topbar.php"); ?>
    <!-- end Top bar -->
    <?=$nagl; ?>
    <h1><?=$err; ?></h1>
    <!-- main-container -->
    <div class="container main-container contact-page">
        <div class="col-md-6">
            <form class='cont-form' action="./" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-contact">
                            <input type="text" name="name" value="<?php echo $name;?>">
                            <?php if($nameErr !=''){ ?>
                              <span class="error">* <?php echo $nameErr;?></span>
                            <?php }else{ ?>
                      <span><?php echo _x('Imie','Formularz Kontaktowy'); ?></span>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-contact">
                            <input type="text" name="email" value="<?php echo $email;?>">
                            <?php if($emailErr !=''){ ?>
                              <span class="error">* <?php echo $emailErr;?></span>
                            <?php }else{ ?>
                              <span><?php echo _x('E-Mail','Formularz Kontaktowy'); ?></span>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="input-contact">
                            <input type="text" name="object" value="<?php echo $object;?>">
                            <?php if($objectErr !=''){ ?>
                                <span class="error">* <?php echo $objectErr;?></span>
                               <?php }else{ ?>
                                 <span><?php echo _x('Temat','Formularz Kontaktowy'); ?></span>
                               <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="textarea-contact">
                            <textarea name="message" value="<?php echo $message;?>"></textarea>
                                <?php if($messageErr !=''){ ?>
                                  <span class="error">* <?php echo $messageErr;?></span>
                                <?php }else{ ?>
                                  <span><?php echo _x('Wiadomość','Formularz Kontaktowy'); ?></span>
                                <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <input class="btn btn-box" type="submit" name="submit" value="<?= _x('Wyślij','Formularz Kontaktowy');?>"> 
                    </div>
                </div>
            </form>
        </div>

        <div class="col-md-6">
            <h3 class="text-uppercase"><?=$page->text_1;?></h3>
            <h5><?=$page->text_2;?></h5>
            <div class="h-30"></div>
            <?=$page->body;?>
            <div class="contact-info">
                <p><i class="ion-android-call"></i><?=$page->nr_tel ?></p>
                <p><i class="ion-ios-email"></i><?=$page->mail_to;?></p>
            </div>
        </div>


    </div>
</div>

    <!-- end main-container -->
    <?php include("./_foot.php"); ?>
