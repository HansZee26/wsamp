<?php
include '../helper/functions.php';
$db = new JSONDatabase('../database.json');
session_start();
$userid = $_SESSION['userid'];
$userdata = $_SESSION['userdata'];

if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $currentpass = $_POST["currentpass"];
     $newpass = $_POST["newpass"];
     $repeatnewpass = $_POST["repeatnewpass"];

     if (password_verify($currentpass, $userdata['password'])) {
          if ($repeatnewpass === $newpass) {
               $pass = hashPassword(10, $newpass);

               $hpass = $pass['hashedPassword'];
               $hsalt = $pass['salt'];

               $sql = $conn->query("UPDATE ucp SET password = '$hpass', salt = '$hsalt' WHERE reg_id = '$userid'");
               if ($sql) {
                    echo 'password_changed';
               }
          } else {
               echo 'repeat_error';
          }
     } else {
          echo 'current_error';
     }
}
