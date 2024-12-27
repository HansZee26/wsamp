<?php
include '../helper/functions.php';
$db = new JSONDatabase('../database.json');
session_start();


if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $email = $_POST["email"];

     $ress = $conn->query("SELECT * FROm ucp WHERE email = '$email'");
     if ($ress->num_rows < 1) {
          echo 'invalid_email';
     } else {
          $data = $ress->fetch_assoc();
          $username = $data['username'];
          $newpass = specialKeyGenerate(12);
          $pass = hashPassword(10, $newpass);
          $hpass = $pass['hashedPassword'];
          $hsalt = $pass['salt'];
          $sql = $conn->query("UPDATE ucp SET password = '$hpass', salt = '$hsalt' WHERE username = '$username' AND email = '$email'");
          if ($sql) {
               m_sendResetPassword($data['username'], $email, $newpass);
               echo "success#$email";
          }
     }
}
