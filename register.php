<?php
include './helper/functions.php';
$db = new JSONDatabase('./database.json');
session_start();
$tokenExists = false;
$regSuccess = false;

if (isset($_GET['ses'])) {
     if ($db->get('rs-' . $_GET['ses'])['status']) {
          $db->del('rs-' . $_GET['ses']);
          return Header('Location: ./login.php');
     }
}

if (isset($_GET['appmode']) && isset($_GET['registerToken']) && $_GET['appmode'] === 'registration') {
     $regToken = $_GET['registerToken'];
     if ($skdata = $db->get("sk-$regToken")) {
          $_SESSION['account_verifed'] = true;
          $tokenExists = true;

          if (isExpired($db->get('sk-' . $regToken)['ex'])) {
               $db->del('sk-' . $regToken);
          }

          if (isExpired($db->get('rs-' . $skdata['ses'])['ex'])) {
               $db->del('rs-' . $skdata['ses']);
          }

          if ($db->get('sk-' . $regToken) && $db->get('sk-' . $regToken)['status'] === true) {
               $db->del('sk-' . $regToken);
               return Header('Location: ./login.php');
          }

          if ($db->get('rs-' . $skdata['ses']) && $db->get('rs-' . $skdata['ses'])['status'] === true) {
               $db->del('rs-' . $skdata['ses']);
               return Header('Location: ./login.php');
          }

          $d1 = $skdata['username'];
          $d2 = $skdata['email'];
          $d3 = $skdata['password'];
          $d4 = $skdata['salt'];
          $d5 = $skdata['pin'];
          $d6 = $regToken;
          $d7 = time();
          $ress = $conn->query("INSERT INTO ucp (username, email, password, salt, pin, special_key, created_at) VALUES ('$d1', '$d2', '$d3', '$d4', '$d5', '$d6', '$d7')");
          if ($ress) {
               $insertid = mysqli_insert_id($conn);
               $_SESSION["userid"] = $insertid;
               $_SESSION["userdata"] = array(
                    'userid' => $insertid,
                    'username' => $d1,
                    'created_at' => time(),
                    'email' => $d2,
                    'password' => $d3,
                    'profile' => 'default.png',
                    'salt' => $d4,
                    'token' => $d6,
                    'admin' => false,
               );
               $regSuccess = true;
               $db->del('sk-' . $d6);
               $db->update('rs-' . $skdata['ses'], [
                    'status' => true
               ]);
               setLogin($insertid, true);
          }
     }
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
     <title>Alophy - Register</title>

     <!-- VENDORS CSS -->
     <link href="./assets/vendor/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">

     <!-- FAVICONS ICON -->
     <link rel="shortcut icon" type="image/x-icon" href="./assets/favicon.ico">
     <link href="./assets/css/style.css" rel="stylesheet">
     <link href="./assets/css/app.css" rel="stylesheet">

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
                                             <h4 class="text-center mb-4 fw-bold">Alophy High Life - Registration</h4>
                                             <?php if (!isset($_GET['appmode'])) : ?>
                                                  <form id="registerForm" method="POST">
                                                       <div class="mb-3">
                                                            <label class="mb-1" for="i_username"><strong>Username</strong><span class="fs-07 text-danger ral-1"> *</span></label>
                                                            <input id="i_username" name="username" type="text" class="form-control" placeholder="Create username">
                                                       </div>
                                                       <div class="mb-3">
                                                            <label class="mb-1" for="i_email"><strong>Email</strong><span class="fs-07 text-danger ral-2"> *</span></label>
                                                            <input id="i_email" name="email" type="email" class="form-control" placeholder="example@gmail.com">
                                                       </div>
                                                       <div class="mb-3">
                                                            <label class="mb-1" for="i_password"><strong>Password</strong><span class="fs-07 text-danger ral-3"> *</span></label>
                                                            <input id="i_password" name="password" type="password" class="form-control" placeholder="Create stength password!">
                                                       </div>
                                                       <div class="text-center mt-4">
                                                            <button type="submit" class="btn btn-primary btn-block">Register</button>
                                                       </div>
                                                  </form>
                                                  <div class="new-account mt-3">
                                                       <p>Already have an ucp account? <a class="text-primary" href="login.php">Login</a></p>
                                                  </div>

                                             <?php elseif ($tokenExists && !isset($_GET['ses']) || !$regSuccess && !isset($_GET['ses'])) : ?>
                                                  <div class="col-xl-14 mt-5">
                                                       <div class="alert alert-danger left-icon-big alert-dismissible fade show">
                                                            <div class="media">
                                                                 <div class="alert-left-icon-big">
                                                                      <span><i class="mdi mdi-alert"></i></span>
                                                                 </div>
                                                                 <div class="media-body">
                                                                      <h5 class="mt-1 mb-2">Registration Failed</h5>
                                                                      <p class="mb-0">Register session already expired or invalid. Please try again.</p>
                                                                 </div>
                                                            </div>
                                                       </div>
                                                  </div>
                                                  <div class="text-center mt-4">
                                                       <a href="./register.php" class="btn btn-danger btn-block">Return to register</a>
                                                  </div>
                                             <?php elseif (isset($_GET['ses']) && $sesdata = $_GET['ses']) : ?>
                                                  <?php if ($db->get("rs-$sesdata")) : ?>
                                                       <?php if ($regSuccess) : ?>
                                                            <div class="col-xl-14 mt-5">
                                                                 <div class="alert alert-success left-icon-big alert-dismissible fade show">
                                                                      <div class="media">
                                                                           <div class="alert-left-icon-big">
                                                                                <span><i class="mdi mdi-check-circle-outline"></i></span>
                                                                           </div>
                                                                           <div class="media-body">
                                                                                <h5 class="mt-1 mb-2">Registration Success!</h5>
                                                                                <p class="mb-0">Your ucp account successfully registered. Press the button to go to the dashboard</p>
                                                                           </div>
                                                                      </div>
                                                                 </div>
                                                            </div>
                                                            <div class="text-center mt-4">
                                                                 <a href="./user/home.php" class="btn btn-success btn-block">Dashboard</a>
                                                            </div>
                                                       <?php else : ?>
                                                            <div class="col-xl-14 mt-5">
                                                                 <div class="alert alert-primary left-icon-big alert-dismissible fade show">
                                                                      <div class="media">
                                                                           <div class="alert-left-icon-big">
                                                                                <span><i class="mdi mdi-email-alert"></i></span>
                                                                           </div>
                                                                           <div class="media-body">
                                                                                <h6 class="mt-1 mb-2">Your account in activation!</h6>
                                                                                <p class="mb-0">Please activate your account via email address: <?= $db->get("rs-$sesdata")['email'] ?></p>
                                                                           </div>
                                                                      </div>
                                                                 </div>
                                                            </div>
                                                            <div class="alert alert-primary alert-dismissible fade show text-center"> Your registration in process.</div>
                                                       <?php endif; ?>
                                                  <?php else : ?>
                                                       <div class="col-xl-14 mt-5">
                                                            <div class="alert alert-danger left-icon-big alert-dismissible fade show">
                                                                 <div class="media">
                                                                      <div class="alert-left-icon-big">
                                                                           <span><i class="mdi mdi-alert"></i></span>
                                                                      </div>
                                                                      <div class="media-body">
                                                                           <h5 class="mt-1 mb-2">Registration Failed</h5>
                                                                           <p class="mb-0">Register session already expired or invalid. Please try again.</p>
                                                                      </div>
                                                                 </div>
                                                            </div>
                                                       </div>
                                                       <div class="text-center mt-4">
                                                            <a href="./register.php" class="btn btn-danger btn-block">Return to register</a>
                                                       </div>
                                                  <?php endif; ?>
                                             <?php endif; ?>
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
     <!-- <script src="./assets/js/styleSwitcher.js"></script> -->
</body>

</html>