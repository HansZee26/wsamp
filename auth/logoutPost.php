<?php
include '../helper/functions.php';
$db = new JSONDatabase('../database.json');
session_start();


if ($_SERVER["REQUEST_METHOD"] === "POST") {
     resetLogin();
     unset($_SESSION['userdata']);
     unset($_SESSION['userid']);
}
