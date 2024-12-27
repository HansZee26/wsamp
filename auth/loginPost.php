<?php
include '../helper/functions.php';
$db = new JSONDatabase('../database.json');
session_start();


if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $username = $_POST["username"];
     $password = $_POST["password"];
     $rememberme = isset($_POST["rememberme"]) ? true : false;

     $ress = $conn->query("SELECT * FROM ucp WHERE username = '$username'");
     if ($ress->num_rows > 0) {
          $ress_data = $ress->fetch_assoc();
          if (verifyPassword($password, $ress_data["password"], $ress_data['salt'])) {
               $_SESSION['userid'] = $ress_data['reg_id'];
               setLogin($ress_data['reg_id'], $ress_data['special_key'], $rememberme ? true : false);
               echo "success";
          } else {
               echo "invalid_pass";
          }
     } else {
          echo "invalid_username";
     }
}
