<?php
include '../helper/functions.php';
session_start();

$_SESSION['samp_stats'] = getSampQuery();

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
	$banned =  $row['banned'];
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
	<title><?= $pageTitle ?></title>

	<!-- FAVICONS ICON -->
	<link rel="shortcut icon" type="image/x-icon" href="../assets/favicon.ico">
	<link href="../assets/vendor/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
	<link href="../assets/vendor/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	<link href="../assets/vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
	<link rel="stylesheet" href="../assets/vendor/nouislider/nouislider.min.css">

	<!-- Style css -->
	<link href="../assets/css/style.css" rel="stylesheet">
	<link href="../assets/css/app.css" rel="stylesheet">

</head>

<body>

	<!--*******************
        Preloader start
    ********************-->
	<div id="preloader">
		<div class="lds-ripple">
			<div></div>
			<div></div>
		</div>
	</div>
	<!--*******************
        Preloader end
    ********************-->

	<!--**********************************
        Main wrapper start
    ***********************************-->
	<div id="main-wrapper">

		<!--**********************************
            Nav header start
        ***********************************-->
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
		<!--**********************************
            Nav header end
        ***********************************-->

		<!--**********************************
            Header start
        ***********************************-->
		<?php rootInclude('layouts/header.php') ?>
		<!--**********************************
            Header end ti-comment-alt
        ***********************************-->

		<!--**********************************
            Sidebar start
        ***********************************-->
		<?php rootInclude('layouts/sidebar.php') ?>
		<!--**********************************
            Sidebar end
        ***********************************-->

		<!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body">
			<!-- row -->
			<?php echo $content ?>
		</div>
		<!--**********************************
            Content body end
        ***********************************-->


		<!--**********************************
            Footer start
        ***********************************-->
		<div class="footer">
			<div class="copyright">
				<p>Copyright © 2024 <span class="text-primary">Alophy High Life</span>
				</p>
			</div>
		</div>
		<!--**********************************
            Footer end
        ***********************************-->


	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<!--**********************************
        Scripts
    ***********************************-->
	<!-- Required vendors -->
	<script src="../assets/vendor/global/global.min.js"></script>
	<script src="../assets/vendor/chart.js/Chart.bundle.min.js"></script>
	<script src="../assets/vendor/jquery-nice-select/js/jquery.nice-select.min.js"></script>

	<script src="../assets/vendor/sweetalert2/dist/sweetalert2.min.js"></script>
	<!-- Apex Chart -->
	<script src="../assets/vendor/apexchart/apexchart.js"></script>

	<script src="../assets/vendor/chart.js/Chart.bundle.min.js"></script>

	<!-- Chart piety plugin files -->
	<script src="../assets/vendor/peity/jquery.peity.min.js"></script>
	<!-- Dashboard 1 -->
	<script src="../assets/js/dash.js"></script>

	<script src="../assets/vendor/owl-carousel/owl.carousel.js"></script>

	<script src="../assets/js/custom.min.js"></script>
	<script src="../assets/js/theme-init.js"></script>
	<script src="../assets/js/demo.js"></script>
	<!-- <script src="../assets/js/styleSwitcher.js"></script> -->
	<script>
		function cardsCenter() {
			jQuery('.card-slider').owlCarousel({
				loop: true,
				margin: 0,
				nav: true,
				//center:true,
				slideSpeed: 3000,
				paginationSpeed: 3000,
				dots: true,
				navText: ['<i class="fas fa-arrow-left"></i>', '<i class="fas fa-arrow-right"></i>'],
				responsive: {
					0: {
						items: 1
					},
					576: {
						items: 1
					},
					800: {
						items: 1
					},
					991: {
						items: 1
					},
					1200: {
						items: 1
					},
					1600: {
						items: 1
					}
				}
			})
		}

		jQuery(window).on('load', function() {
			setTimeout(function() {
				cardsCenter();
			}, 1000);
		});
	</script>

</body>

</html>