<?php
include 'jsondb.php';

if (file_exists('./.env')) {
    $envVariables = parse_ini_file('./.env');
    foreach ($envVariables as $key => $value) {
        putenv("$key=$value");
    }
} else if (file_exists('../.env')) {
    $envVariables = parse_ini_file('../.env');
    foreach ($envVariables as $key => $value) {
        putenv("$key=$value");
    }
} else if (file_exists('../../.env')) {
    $envVariables = parse_ini_file('../../.env');
    foreach ($envVariables as $key => $value) {
        putenv("$key=$value");
    }
}

if (getenv('ERROR_DISPLAY')) {
    ini_set('display_errors', 0);
    error_reporting(0);
}

$conn = new mysqli(getenv('DB_HOST'), getenv('DB_USER'), getenv('DB_PASS'), getenv('DB_NAME'));

if ($conn->connect_error) {
    die("MySQL Connection Failed: " . $conn->connect_error);
}
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// UTILITY FUNCTIONS ///////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
// ------------------- Cookies -------------------- //

function cookieSet($cookie_name, $cookie_value, $expiry_time = 0, $path = '/')
{
    setcookie($cookie_name, $cookie_value, $expiry_time, $path);
}

function cookieGet($cookie_name)
{
    return isset($_COOKIE[$cookie_name]) ? $_COOKIE[$cookie_name] : null;
}

function cookieDelete($cookie_name, $path = '/')
{
    setcookie($cookie_name, '', time() - 3600, $path);
    unset($_COOKIE[$cookie_name]);
}

// ---------------- Player Skins --------------- //

$femaleSkins = array(
    69, 41, 56, 91
);

$maleSkins = array(
    2, 7, 20, 60
);

function getRandomSkinId($skinArray)
{
    return $skinArray[array_rand($skinArray)];
}

function getCountryId($countryName)
{
    $countries = [
        "United States Of America",
        "Singapore",
        "Indonesia",
        "Phillpines",
        "Russian",
        "Australia",
        "China",
        "Colombia",
        "Denmark",
        "Italian",
        "Germany",
        "Japanese",
        "Mexico",
    ];

    $index = array_search($countryName, $countries);
    return ($index !== false) ? $index : null;
}
function numHead($number, $newHead)
{
    $number = preg_replace('/[^0-9+]/', '', $number);
    if (substr($number, 0, 1) === '0') {
        $number = $newHead . substr($number, 1);
    } elseif (substr($number, 0, 1) === '8') {
        $number = $newHead . substr($number, 1);
    } elseif (substr($number, 0, 3) === '+62') {
        $number = $newHead . substr($number, 3);
    }

    return $number;
}

function charName($inputString)
{
    $cleanedString = str_replace('_', ' ', $inputString);
    return $cleanedString;
}

function isExpired($time)
{
    if (time() > $time) {
        return true;
    } else {
        return false;
    }
}

function maskMiddleDigits($number)
{
    $numberStr = strval($number);
    $length = strlen($numberStr);
    $middle = (int) ($length / 2);
    $maskLength = 5;
    $maskLength = min($maskLength, $length);
    $masked = str_repeat('*', $maskLength);
    $maskedNumber = substr_replace($numberStr, $masked, $middle - (int)($maskLength / 2), $maskLength);
    return $maskedNumber;
}


function randNumGenerate($length)
{
    $min = pow(10, $length - 1);
    $max = pow(10, $length) - 1;

    return mt_rand($min, $max);
}
function specialKeyGenerate($length)
{
    $characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $characters_length = strlen($characters);
    $special_key = '';

    for ($i = 0; $i < $length; $i++) {
        $random_char = $characters[rand(0, $characters_length - 1)];
        $random_case = rand(0, 1);
        if ($random_case == 1) {
            $random_char = strtoupper($random_char);
        } else {
            $random_char = strtolower($random_char);
        }

        $special_key .= $random_char;
    }

    return $special_key;
}

function postRequest($url, $data)
{
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    curl_close($ch);
    return $response;
}

// ---------------- Global Function --------------- //

$globalUrl;
if (isset($_SERVER['HTTP_REFERER'])) {
    $url = $_SERVER['HTTP_REFERER'];
    $parsed_url = parse_url($url);
    $protocol = isset($parsed_url['scheme']) ? $parsed_url['scheme'] . '://' : '';
    $domain = isset($parsed_url['host']) ? $parsed_url['host'] : '';
    $globalUrl = $protocol . $domain;
}
function rootInclude($relativePath)
{
    $rootPath = '../';
    include($rootPath . $relativePath);
}
function getPath($file)
{
    $basePath = __DIR__;
    $additions = ['/', './', '../', '../../'];
    foreach ($additions as $addition) {
        $filePath = $basePath . $addition . $file;
        if (file_exists($filePath)) {
            return $filePath;
        }
    }
    return false;
}

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
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// Account / Auth Functions /////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

function getMaxCs()
{
    global $db;
    $max = 0;
    for ($i = 0; $i < 50; $i++) {
        if ($db->get("csreq-$i")) {
            $max++;
        }
    }
    return $max;
}
function getTableDataCount($table)
{
    global $conn;
    $sql = "SELECT COUNT(*) AS total FROM $table";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $total = $row["total"];
        return $total;
    } else {
        return 0;
    }
}
function getLogin()
{
    global $conn;
    if (isset($_SESSION['userid'])) {
        $usered = $_SESSION['userid'];
        $sql = $conn->query("SELECT * FROM ucp WHERE reg_id = '$usered'");
        if ($sql->num_rows > 0) {
            initUserData($usered);
            return $_SESSION['userid'];
        }
    } elseif (isset($_COOKIE['remember_me'])) {
        $token = $_COOKIE['remember_me'];
        $ress = $conn->query("SELECT * FROM ucp WHERE special_key = '$token'");

        if ($ress->num_rows > 0) {
            $data = $ress->fetch_assoc();
            $userid = $data['reg_id'];
            $_SESSION['userid'] = $userid;
            initUserData($userid);
            return $userid;
        }
    }

    return false;
}

function setLogin($userid, $token, $remember_me = false)
{
    $_SESSION['userid'] = $userid;

    if ($remember_me) {
        cookieSet('remember_me', $token, time() + (86400 * 30), "/");
    }
}

function resetLogin()
{
    unset($_SESSION['userid']);
    unset($_SESSION['userdata']);
    cookieDelete('remember_me');
}


function hashPassword($saltRounds, $password)
{
    if (getenv('PASS_ENCRYPTION') === "sha256") {
        $salt = bin2hex(random_bytes($saltRounds));
        $hashedPassword = hash('sha256', $password . $salt);
        return array('hashedPassword' => $hashedPassword, 'salt' => $salt);
    } else if (getenv('PASS_ENCRYPTION') === "bcrypt") {
        $salt = sprintf("$2y$%02d$", $saltRounds) . substr(md5(uniqid(rand(), true)), 0, 22);
        $hashedPassword = crypt($password, $salt);
        return array('hashedPassword' => $hashedPassword, 'salt' => $salt);
    }
}

function verifyPassword($inputPassword, $hashedPassword, $salt)
{
    if (getenv('PASS_ENCRYPTION') === "sha256") {
        $inputHashedPassword = hash('sha256', $inputPassword . $salt);
        return hash_equals($hashedPassword, $inputHashedPassword);
    } else if (getenv('PASS_ENCRYPTION') === "bcrypt") {
        return password_verify($inputPassword, $hashedPassword);
    }
}


function initUserData($userid)
{
    global $conn;
    $sql = $conn->query("SELECT * FROM ucp WHERE reg_id = '$userid'");
    if ($sql->num_rows > 0) {
        $row = $sql->fetch_assoc();
        $_SESSION['userdata'] = $row;
        return $_SESSION['userdata'];
    }
    return false;
}
function initCharacters($username, $id)
{
    global $conn;
    $id = 0;
    $csun = array(
        0 => -1,
        1 => -1,
        2 => -1,
        3 => -1,
        4 => -1
    );
    $ress = $conn->query("SELECT * FROM players WHERE ucpname = '$username'");
    for ($i = 0; $i < 3; $i++) if (isset($_SESSION["char-$i"])) {
        unset($_SESSION["char-$i"]);
    }
    if ($ress->num_rows > 0) {
        while ($row = $ress->fetch_assoc()) {
            $_SESSION["char-$id"] = array(
                'id' => $row['reg_id'],
                'name' => $row['username'],
                'level' => $row['level'],
                'last_login' => $row['last_login'],
                'reg_date' => $row['reg_date'],
                'ucp' => $row['ucpname'],
                'age' => $row['age'],
                'pskin' => $row['skin'],
                'admin' => $row['admin'],
                'money' => floor(intval($row['money']) / 100),
                'bmoney' => floor(intval($row['bmoney']) / 100),
                'gender' => $row['gender'],
                'warn' => $row['warn'],
                'hours' => $row['hours'],
                'minutes' => $row['minutes'],
                'seconds' => $row['seconds'],
                'characterstory' => $row['cschar'],
                'key' => $row['skey'],
                'banned' => $row['pbanned'],
                'banreason' => $row['pbanreason'],
                'banby' => $row['pbanby'],
            );
            $csun[$id] = $row['reg_id'];
            $id++;
        }
        $conn->query("UPDATE ucp SET CharName = $csun[0], CharName2 = $csun[1], CharName3 = $csun[2] WHERE username = '$username'");
        return true;
    }
    return false;
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// Functions using request /////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////// WHATSAPP SENDER /////////////////////////////////////////////
function sendWhatsappVerify($number, $link)
{
    $postData = array(
        'message' => "*Alophy High Life - Whastapp Verify*\n\n$link\n\nClick the link to redirect verification.",
        'number' => "$number"
    );
    $ch = curl_init(getenv('WHATSAPP_ENDPOINT'));
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($postData));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    if (curl_errno($ch)) {
        echo 'Error: ' . curl_error($ch);
    }
    curl_close($ch);
    echo $response;
}
function sendWhatsappMessage($number, $msg)
{
    $postData = array(
        'message' => "$msg",
        'number' => "$number"
    );
    $ch = curl_init(getenv('WHATSAPP_ENDPOINT'));
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($postData));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    if (curl_errno($ch)) {
        echo 'Error: ' . curl_error($ch);
    }
    curl_close($ch);
    echo $response;
}

///////////////////////// MAILER ///////////////////////////////
function m_sendActivation($username, $email, $link)
{
    $mailContent = file_get_contents('../assets/activate_mailmlx.html');
    $mailContent = str_replace('{username}', $username, $mailContent);
    $mailContent = str_replace('{action_link}', $link, $mailContent);
    $data = array(
        'skey' => 'aghd-sahk-roqc-fawp',
        'to' => "$email",
        'subject' => 'Account Activation',
        'html' => "$mailContent",
    );

    $ch = curl_init(getenv('EMAIL_ENDPOINT'));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
    $response = curl_exec($ch);
    if ($response === false) {
        echo 'Error cURL: ' . curl_error($ch);
    } else {
        $decoded_response = json_decode($response, true);
        echo 'Response: ' . print_r($decoded_response, true);
    }
    curl_close($ch);
}
function m_sendResetPassword($username, $email, $newpass)
{
    $mailContent = file_get_contents('../assets/rpass_mailp.html');
    $mailContent = str_replace('{username}', $username, $mailContent);
    $mailContent = str_replace('{newpass}', $newpass, $mailContent);
    $data = array(
        'skey' => 'aghd-sahk-roqc-fawp',
        'to' => "$email",
        'subject' => 'Account Recovery',
        'html' => "$mailContent",
    );

    $ch = curl_init(getenv('EMAIL_ENDPOINT'));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
    $response = curl_exec($ch);
    if ($response === false) {
        echo 'Error cURL: ' . curl_error($ch);
    } else {
        $decoded_response = json_decode($response, true);
        echo 'Response: ' . print_r($decoded_response, true);
    }
    curl_close($ch);
}

///////////////////////// SAMP QUERY /////////////////////////////////////////
function getSampQuery()
{
    $ip = getenv('SAMP_HOST');
    $port = getenv('SAMP_PORT');
    $response = file_get_contents(getenv('SAMPQUERY_ENDPOINT') . "/$ip/$port");
    if (!$response) {
        $data_offline = array(
            "status" => "Offline",
            "address" => "$ip:$port",
            "hostname" => "undefined",
            "gamemode" => "",
            "mapname" => "",
            "passworded" => false,
            "maxplayers" => 50,
            "online" => 0,
            "rules" => array(
                "lagcomp" => true,
                "mapname" => "San Andreas",
                "version" => "0.3.7-R2",
                "weather" => 10,
                "weburl" => "www.sa-mp.com",
                "worldtime" => "12:00"
            )
        );
        return $data_offline;
    } else {
        $data = json_decode($response, true);
        return $data;
    }
}

// ------------- Sweet Alerts ---------------- // 
function swal_success($title, $message)
{
    return "<script>
    swal(\"$title\", \"$message\", \"success\")
    </script>";
}
