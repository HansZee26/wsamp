<?php
include '../helper/functions.php';
$db = new JSONDatabase('../database.json');
session_start();
$username = $_SESSION['userdata']['username'];

if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $name = $_POST['name'];

     $sql = $conn->query("DELETE FROM players WHERE username = '$name'");
     if ($sql) {
          return true;
     }
     return false;
}
