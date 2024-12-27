<?php
include '../../helper/functions.php';
$db = new JSONDatabase('../../database.json');

if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['id'])) {
     $id = $_POST['id'];

     $data = $db->get("csreq-$id");
     $uns = $data['owner'];
     $uid = $data['ownerid'];

     $db->del("csreq-$id");
     $db->del("myreq-$uns-$uid");
     echo 'success';
}
