<?php
include '../helper/functions.php';
$db = new JSONDatabase('../database.json');

if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $username = $_POST["username"];
     $email = $_POST["email"];
     $password = $_POST["password"];

     $ress = $conn->query("SELECT * FROM ucp WHERE username = \"$username\" OR email = \"$email\"");

     if ($ress->num_rows > 0) {
          echo 'useremail_taken';
     } else {
          $specialkey = specialKeyGenerate(75);
          $ses = specialKeyGenerate(12);
          $pin = randNumGenerate(6);
          $pass = hashPassword(10, $password);
          $verify_link = "$protocol://$domain/register?appmode=registration&ses=$ses&registerToken=" . $specialkey;

          $hpass = $pass['hashedPassword'];
          $hsalt = $pass['salt'];
          m_sendActivation($username, $email, $verify_link);
          $db->set("sk-" . $specialkey, [
               'status' => false,
               'username' => $username,
               'email' => $email,
               'password' => $hpass,
               'salt' => $hsalt,
               'ses' => $ses,
               'pin' => $pin,
               'ex' => time() + 60000 * 12,
          ]);
          $db->set("rs-$ses", [
               'status' => false,
               'email' => $email,
               'username' => $username,
               'ex' => time() + 60000 * 12,
          ]);
          echo "success@register.php?appmode=registration&ses=$ses";
     }
}
