<?php
$mail_to = $mail_from = $mail_subject = $_mrs = $_mrk = "";

//$_mto = $pages->get("/kontakt/")->mail_to;
//$_mf = $pages->get("/kontakt/")->mail_from;
//$_ms = $pages->get("/kontakt/")->mail_subject;
//$_mrs = $pages->get("/kontakt/")->recaptcha_sitekey;
//$_mrk = $pages->get("/kontakt/")->recaptcha_secretkey;

$mail_to = $page->mail_to;
$mail_from = $page->mail_from;
$mail_subject = $page->mail_subject;

$nagl = $err = '';

// define variables and set to empty values
$nameErr = $emailErr = $objectErr = $messageErr = "";
$name = $email = $object = $message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
  if (empty($_POST["name"])) {
    $nameErr = "Imie Jest Wymagane";
  } else {
    $name = test_input($_POST["name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
      $nameErr = "Jedynie Litery oraz puste przestrzenie";
    }
  }
  
  if (empty($_POST["email"])) {
    $emailErr = "Email Jest Wymagany";
  } else {
    $email = test_input($_POST["email"]);
    // check if e-mail address is well-formed
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Nieprawidłowy Format Email";
    }
  }
    
  if (empty($_POST["object"])) {
    $objectErr = "Temat Jest Wymagany";
  } else {
    $object = test_input($_POST["object"]);
  }
  
    if (empty($_POST["message"])) {
    $messageErr = "Wiadomość Jest Wymagana";
  } else {
    $message = test_input($_POST["message"]);
  }
  
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
} ?>


<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if ( ($name !='') && ($email !='') && ($object !='') && ($message!='') ) {

            if( ($emailErr =='') ){
                        $mail = wireMail();
                        $mail->to("$mail_to")->from("$mail_from"); // all calls can be chained
                        $mail->subject("$mail_subject");
                        $mail->body("<b>Imie:</b> $name <br> <b>Email:</b> $email <br> <b>Temat:</b> $object</br> <b>Wiadomość:</b> $message");
                        $mail->bodyHTML("<html><body><b>Imie:</b> $name <br> <b>Email:</b> $email <br> <b>Temat:</b> $object<br> <b>Wiadomość:</b> $message</body></html>");
                        $mail->send();

                   $nagl = "<div class='form-nagl alert alert-success' role='alert'><ul><li><h2>Twoja Wiadomość Została wysłana</h2></li><li><b>Imie:</b> $name</li><li><b>E-Mail:</b> $email<li><b>Temat:</b> $object</li><li><b>Wiadomość:</b> $message</ul></div>";

            }else {
                $err = "<div class='alert alert-danger' role='alert'><h3>Nieprawidłowy Format Email</h3></div>";
            }

                } else {

                    $nagl = "<div class='alert alert-success' role='alert'><h3>Wypełnij Formularz</h3></div>";
                } 
}?>