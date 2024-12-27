<?php
include '../helper/functions.php';
session_start();

if (!getLogin()) {
     return Header('Location: ../login.php');
} else {
     $userid = getLogin();

     $row = initUserData($userid);
     $username =  $row['username'];
     $email =  $row['email'];
     $password =  $row['password'];
     $salt =  $row['salt'];
     $profile =  $row['profile'];
     $number =  $row['number'];

     initCharacters($username, $userid);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="robots" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <meta name="description" content="Alophy High Life - User Dashboard">
     <meta property="og:title" content="Alophy High Life - User Control Panel">
     <meta property="og:description" content="Alophy High Life User control panel website, developed by Nixxy.">
     <meta property="og:image" content="../assets/favicon.ico">
     <meta name="format-detection" content="telephone=no">

     <!-- PAGE TITLE HERE -->
     <title>Alophy High Life - Dashboard</title>

     <!-- FAVICONS ICON -->
     <link rel="shortcut icon" type="image/x-icon" href="../assets/favicon.ico">
     <link href="../assets/vendor/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
     <link href="../assets/vendor/jquery-nice-select/css/nice-select.css" rel="stylesheet">
     <link href="../assets/vendor/owl-carousel/owl.carousel.css" rel="stylesheet">

     <!-- Style css -->
     <link href="../assets/css/style.css" rel="stylesheet">
     <link href="../assets/css/app.css" rel="stylesheet">

</head>

<body web-theme="dark">

     <!-------------- Preloader Start --------------->
     <div id="preloader">
          <div class="lds-ripple">
               <div></div>
               <div></div>
          </div>
     </div>
     <!-------------- Preloader End --------------->

     <!-------------- Main Wrapper Start --------------->
     <div id="main-wrapper">

          <!-------------- Nav Header Start --------------->
          <div class="nav-header">
               <a href="../user/home.php" class="brand-logo">
                    <img src="https://cdn.discordapp.com/attachments/1024153034219065345/1187972312516001862/20231221_091914.png?ex=6598d46e&is=65865f6e&hm=a3beed0e3ee94e390c8096829b46177514b9b5c720d3881b324226c300aa2803&" alt="" class="logo-abbr">
                    <div class="brand-title">
                         <h2 class="">Alophy.</h2>
                         <span class="brand-sub-title text-white">User Control Panel</span>
                    </div>
               </a>
               <div class="nav-control">
                    <div class="hamburger">
                         <span class="line"></span><span class="line"></span><span class="line"></span>
                    </div>
               </div>
          </div>
          <!-------------- Nav Header End --------------->

          <!-------------- Header Start --------------->
          <?php rootInclude('layouts/header.php') ?>
          <!-------------- Header End --------------->

          <!-------------- Sidebar Start --------------->
          <?php rootInclude('layouts/sidebar.php') ?>
          <!-------------- Sidebar End --------------->

          <!-------------- Content Body Start --------------->
          <div class="content-body">
               <!-- row -->