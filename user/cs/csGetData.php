<?php
include '../../helper/functions.php';
$db = new JSONDatabase('../../database.json');

if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $id = $_POST['id'];

     $data = $db->get("csreq-$id");

     if ($data) {
          echo json_encode($data);
     } else {
          echo false;
     }
}
