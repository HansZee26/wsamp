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
     <title>Alophy - Forgot Password</title>
     
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
                                             <h5 class="text-center mb-5 fw-bold">Alophy High Life - Forgot Password</h5>
                                             <p class="mb-0 mt-0 fs-07">- Kami akan mengirimkan Password sementara untuk login ke Akunmu.</p>
                                             <p class="mb-0 mt-0 fs-07">- Lalu kamu bisa menggantinya di user dashboard.</p>
                                             <p class="mb-0 mt-0 fs-07">- Masukan email yang terdaftar ke akunmu dibawah ini!</p>
                                             <p class="mb-3 mt-0 fs-07">- Jika kamu ingat password akunnmu, kembali ke halaman <a href="login.php" class="text-primary fw-bold">Login</a></p>
                                             <form method="POST" id="forgotPassForm">
                                                  <div class="mb-4">
                                                       <label for="email-phone-forgot"><strong>Account Email</strong><span class="text-danger fs-06 fal-1"></span></label>
                                                       <input type="email" id="email-phone-forgot" class="form-control" placeholder="example@gmail.com" required>
                                                  </div>
                                                  <div class="text-center">
                                                       <button type="submit" class="btn btn-primary btn-block">Submit</button>
                                                  </div>
                                             </form>
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
     <script src="./assets/vendor/sweetalert2/dist/sweetalert2.min.js"></script>
     <script src="./assets/vendor/global/global.min.js"></script>
     <script src="./assets/js/custom.min.js"></script>
     <script src="./assets/js/auth.js"></script>
     <script src="./assets/js/theme-init.js"></script>
</body>

</html>