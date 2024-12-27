<?php
include '../helper/functions.php';
$db = new JSONDatabase('../database.json');
session_start();

function sgr($length)
{
     $characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
     $characters_length = strlen($characters);
     $special_key = '';

     for ($i = 0; $i < $length; $i++) {
          $random_char = $characters[rand(0, $characters_length - 1)];
          $random_case = rand(0, 1);
          if ($random_case == 1) {
               $random_char = strtoupper($random_char);
          } else {
               $random_char = strtolower($random_char);
          }

          $special_key .= $random_char;
     }

     return $special_key;
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $fn = $_POST['fn'];
     $ln = $_POST['ln'];
     $origin = $_POST['origin'];
     $gender = $_POST['gender'];
     $birth = $_POST['birth'];

     $name = $fn . '_' . $ln;
     $ucpname = $_SESSION['userdata']['username'];

     $cse = $conn->query("SELECT * FROM players WHERE username = '$name'");
     if ($cse->num_rows < 1) {
          $bparts = explode("-", $birth);
          $age = date('Y') - $bparts[0];
          $now = date('Y-m-d');
          $dateofbirth = "$bparts[2]/$bparts[1]/$bparts[0]";
          $accent = getCountryId($origin);
          $skin = 0;
          if ($gender === "Male") {
               $skin = getRandomSkinId($maleSkins);
               $gender = 1;
          } else if ($gender === "Famale") {
               $skin = getRandomSkinId($femaleSkins);
               $gender = 0;
          }

          $date_reg = time();
          $key = sgr(28);

          $sql = $conn->query("INSERT INTO players (username, ucpname, level, money, bmoney, skey,  age, skin, gender, reg_date, accent) VALUES ('$name', '$ucpname', '1', '10000', '30000', '$key', '$dateofbirth', '$skin', '$gender', '$date_reg', '$accent')");
          if ($sql) {
               echo 'success';
          }
     } else {
          echo 'name_already_use';
     }
}
