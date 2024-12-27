<?php
include '../../helper/functions.php';
$db = new JSONDatabase('../../database.json');

if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $id = $_POST['id'];
     $reason = $_POST['reason'];

     $data = $db->get("csreq-$id");
     $uns = $data['username'];
     $uid = $data['userid'];

     $db->update("csreq-$id", [
          "status" => 'revoked',
          'reason' => $reason
     ]);
     echo 'success';
}
