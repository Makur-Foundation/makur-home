<?php
if (isset($_POST['gonder'])) {
  $name = $_POST['name'];
  $subject = $_POST['subject'];
  $website = $_POST['website'];
  $mailFrom = $_POST['mail'];
  $message = $_POST['message'];

  $mailTo = "tanakinci2002@gmail.com";
  $headers = $mailFrom." adresli mailden Maker Birliği'ne mesaj tespit edildi kaptan!";
  $txt = "Ahoy! Maker Birliği iletişim kutusunu ".$name" isimli maker kullandı!"."\n\n".$message;

  mail($mailTo, $subject, $website, $txt, $headers);
}

?>
