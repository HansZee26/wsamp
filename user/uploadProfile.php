<?php
include '../helper/functions.php';
$db = new JSONDatabase('../database.json');
session_start();
function compressImage($source, $destination, $quality) {
     $info = getimagesize($source);
     if ($info['mime'] == 'image/jpeg') 
         $image = imagecreatefromjpeg($source);
     elseif ($info['mime'] == 'image/png') 
         $image = imagecreatefrompng($source);
     elseif ($info['mime'] == 'image/gif') 
         $image = imagecreatefromgif($source);
     else
         return false;
     imagejpeg($image, $destination, $quality);
     imagedestroy($image);
     return true;
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $parts = explode(".", $_FILES['profile']['name']);
     $userid = $_SESSION['userid'];
     $ex = end($parts);
     $rn = specialKeyGenerate(8);
     $uploadDir = "../assets/profiles/";
     $pn = $rn . '.' . $ex;
     $uploadFile = $uploadDir . $pn;
     if (compressImage($_FILES["profile"]["tmp_name"], $uploadFile, 60)) {
          unlink($uploadDir . $_SESSION["userdata"]['profile']);

          $_SESSION["userdata"]['profile'] = $pn;
          $sql = $conn->query("UPDATE ucp SET profile = '$pn' WHERE reg_id = '$userid'");
          if ($sql) {
               return Header('Location: ./profile.php');
          }
     } else {
          return Header('Location: ./profile.php');
     }
}
