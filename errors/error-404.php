<?php
http_response_code(404);
function getProtocol()
{
    return isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
}

function getDomain()
{
    return isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '';
}

$domain = getDomain();
$protocol = getProtocol();
$cina = "$protocol://$domain/";
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
    <meta property="og:image" content="<?= $cina ?>/assets/favicon.ico">
    <meta name="format-detection" content="telephone=no">

    <!-- PAGE TITLE HERE -->
    <title>Alophy High Life - 404</title>

    <!-- FAVICONS ICON -->
    <link rel="shortcut icon" type="image/x-icon" href="<?= $cina ?>/assets/favicon.ico">
    <link href="<?= $cina ?>/assets/css/style.css" rel="stylesheet">

</head>

<body class="vh-100">
    <div class="authincation h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-7">
                    <div class="form-input-content text-center error-page">
                        <h1 class="error-text fw-bold fs-10">404</h1>
                        <h4 class="mb-3 fs-22">The page you were looking for is not found!</h4>
                        <!-- <p>You may have mistyped the address or the page may have moved.</p> -->
                        <div>
                            <a class="btn btn-primary" href="<?= $cina . "login.php" ?>">Back to Home</a>
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
    <script src="<?= $cina ?>/assets/vendor/global/global.min.js"></script>
    <script src="<?= $cina ?>/assets/js/custom.min.js"></script>
    <script src="<?= $cina ?>/assets/js/theme-init.js"></script>
</body>

</html>