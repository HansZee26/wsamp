<?php
include '../helper/functions.php';
$db = new JSONDatabase('../database.json');
session_start();


if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $number = $_POST["number"];

     $num = numHead($number, "62");

     $sql  = $conn->query("SELECT * FROM ucp WHERE 'number' = '$num'");
     if ($sql->num_rows < 1) {
          $key = specialKeyGenerate(65);
          $link = "$protocol://$domain/user/numverify?key=$key&to=profile";

          $_SESSION['numverify'] = array(
               'number' => $num,
               'userid' => $_SESSION['userid'],
          );

          $db->set("numverify-$key", [
               'number' => $num,
               'username' => $_SESSION['userdata']['username'],
               'userid' => $_SESSION['userid'],
               'link' => "$link",
               'key' => "$key",
          ]);

          sendWhatsappVerify($num, $link);
          echo 'success';
     } else {
          echo 'already_use';
     }
}
