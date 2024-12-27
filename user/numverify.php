<?php
include '../helper/functions.php';
$db = new JSONDatabase('../database.json');
session_start();
$success = false;
$useragent = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : false;

if ($_SERVER["REQUEST_METHOD"] === "GET" && isset($_GET['key']) && $useragent) {
     $key = $_GET['key'];
     $data = $db->get("numverify-$key");

     if ($data['key'] === $key) {
          $_SESSION['userdata']['number'] = $data['number'];

          $username = $data['username'];
          $number = $data['number'];
          $userid = $data['userid'];

          $sql = $conn->query("UPDATE ucp SET number = $number WHERE reg_id = '$userid'");
          if ($sql) {
               $db->del("numverify-$key");
               unset($_SESSION['numverify']);
               $success = true;
               sendWhatsappMessage($number, "*Alophy High Life - Whatsapp Linked!*\n\nHallo, $username\nYour whatsapp number sucessfully linked to ucp account\nNow you can create character and manage character with cs and login InGame\n\nRegards, Alophy Staffs");
               return Header('location: ./profile.php');
          }
     }
}

?>
<?php if (!$success) : ?>
     <!DOCTYPE html>
     <html lang="en" class="h-100">

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
          <meta name="format-detection" content="telephone=no">

          <!-- PAGE TITLE HERE -->
          <title>Alophy - Whatsapp Verify</title>

          <!-- FAVICONS ICON -->
          <link rel="shortcut icon" type="image/x-icon" href="../assets/favicon.ico">
          <link href="../assets/css/style.css" rel="stylesheet">

     </head>

     <body class="vh-100">
          <?php if($useragent) :?>
          <div class="authincation h-100">
               <div class="container h-100">
                    <div class="row justify-content-center h-100 align-items-center">
                         <div class="col-md-6">
                              <div class="authincation-content">
                                   <div class="row no-gutters">
                                        <div class="col-xl-12">
                                             <div class="auth-form rounded">
                                                  <div class="col-xl-14 mt-5">
                                                       <div class="alert alert-danger left-icon-big fade show">
                                                            <div class="media">
                                                                 <div class="alert-left-icon-big">
                                                                      <span><i class="mdi mdi-whatsapp"></i></span>
                                                                 </div>
                                                                 <div class="media-body">
                                                                      <h5 class="mt-1 mb-2">Verification Failed</h5>
                                                                      <p class="mb-0">The Verification link has been expired or invalid link specified.</p>
                                                                 </div>
                                                            </div>
                                                       </div>
                                                  </div>
                                                  <div class="text-center mt-4">
                                                       <a href="../login.php" class="btn btn-danger btn-block">Return to Home</a>
                                                  </div>
                                             </div>
                                        </div>
                                   </div>
                              </div>
                         </div>
                    </div>
               </div>
          </div>
          <?php endif;?>



          <!-- Required vendors -->
          <script src="../assets/vendor/global/global.min.js"></script>
          <script src="../assets/js/custom.min.js"></script>
          <script src="../assets/js/theme-init.js"></script>
     </body>

     </html>
<?php endif; ?>