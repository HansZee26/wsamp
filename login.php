<?php
session_start();
include './helper/functions.php';

if (getLogin()) {
     unset($_SESSION['login_success']);
     unset($_SESSION['login_error']);
     return Header('Location: ./user/home.php');
}
?>
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
     <title>Alophy - Login</title>

     <!-- VENDORS CSS -->
     <link href="./assets/vendor/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">

     <!-- FAVICONS ICON -->
     <link rel="shortcut icon" type="image/x-icon" href="./assets/favicon.ico">
     <link href="./assets/css/style.css" rel="stylesheet">

</head>

<body class="vh-100">
     <div class="authincation h-100">
          <div class="container h-100">
               <div class="row justify-content-center h-100 align-items-center">
                    <div class="col-md-6">
                         <div class="authincation-content">
                              <div class="row no-gutters">
                                   <div class="col-xl-12">
                                        <div class="auth-form">
                                             <h4 class="text-center mb-4 fw-bold">Alophy High Life - Login</h4>
                                             <form id="loginForm" method="POST">
                                                  <div class="mb-3">
                                                       <label class="mb-1" for="username"><strong>Username</strong><span class="text-danger lal-1 fs-07"> *</span></label>
                                                       <input id="username" name="username" type="text" class="form-control" placeholder="Enter your username" name="username" Required>
                                                  </div>
                                                  <div class="mb-3">
                                                       <label class="mb-1" for="password"><strong>Password</strong><span class="text-danger lal-2 fs-07"> *</span></label>
                                                       <input id="password" name="password" type="password" class="form-control" placeholder="Enter your password" name="password" Required>
                                                  </div>
                                                  <div class="row d-flex justify-content-between mt-4 mb-2">
                                                       <div class="mb-3">
                                                            <div class="form-check custom-checkbox ms-1">
                                                                 <input type="checkbox" class="form-check-input" id="basic_checkbox_1" name="rememberme">
                                                                 <label class="form-check-label" for="basic_checkbox_1">Remember me</label>
                                                            </div>
                                                       </div>

                                                  </div>
                                                  <div class="text-center">
                                                       <button type="submit" class="btn btn-primary btn-block">Login</button>
                                                  </div>
                                             </form>
                                             <div class="new-account mt-3">
                                                  <a href="forgot-password.php" class="fs-25">Forgot Password?</a>
                                                  <p>Don't have an ucp account? <a class="text-primary" href="register.php">Register</a></p>
                                             </div>
                                        </div>
                                   </div>
                              </div>
                         </div>
                    </div>
               </div>
          </div>
     </div>


     <!--**********************************
        Scripts
    ***********************************-->
     <!-- Required vendors -->
     <script src="../assets/vendor/sweetalert2/dist/sweetalert2.min.js"></script>
     <script src="./assets/vendor/global/global.min.js"></script>
     <script src="./assets/js/custom.min.js"></script>
     <script src="./assets/js/auth.js"></script>
     <script src="./assets/js/theme-init.js"></script>
</body>

</html>