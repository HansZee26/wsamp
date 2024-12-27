<?php
include '../../helper/functions.php';
$db = new JSONDatabase('../../database.json');

if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $id = $_POST['id'];

     $data = $db->get("csreq-$id");
     $uns = $data['name'];

     $sql = $conn->query("UPDATE players SET cschar  = '1' WHERE username = '$uns'");
     if ($sql) {
          $db->update("csreq-$id", [
               "status" => 'approved'
          ]);
          echo 'success';
     }
     echo 'failed';
}
