<?php
include '../../helper/functions.php';
$db = new JSONDatabase('../../database.json');
session_start();
$userid = $_SESSION['userid'];
$username = $_SESSION['userdata']['username'];



if ($_SERVER["REQUEST_METHOD"] === "POST") {
     $name = $_POST['name'];
     $link = $_POST['link'];
     $level = $_POST['level'];
     $warn = $_POST['warn'];
     $detail = $_POST['detail'];

     $maxid = getMaxCs();

     if ($maxid > 49) {
          echo 'queue_full';
     } else {
          $db->set("csreq-$maxid", [
               "owner" => $username,
               "ownerid" => $userid,
               "status" => "pending",
               "name" => $name,
               "warn" => $warn,
               "link" => $link,
               "level" => $level,
               "detail" => $detail,
               "req_date" => time()
          ]);

          $db->set("myreq-$username-$userid", [
               "id" => "csreq-$maxid"
          ]);
          echo 'success';
     }
}
