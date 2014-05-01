<?php

include 'crypt.inc.php';

function db_connect() {
    require '../conf/pwd.inc.php';
    $db = mysqli_connect($db_host, $db_user, $db_pass, $db_name) 
        or die('[EE] DB connection error: '.mysqli_error($link));
    $db->autocommit(true);
    return $db;
}

function db_close($db) {
    mysqli_close($db);
}

function db_login($email, $pwd) {
    $db = db_connect();
    $login_query = "SELECT user_id FROM users WHERE email = ? AND password = ? LIMIT 1";
    $stmt = mysqli_prepare($db, $login_query);

    mysqli_stmt_bind_param($stmt, "s", $email);
    mysqli_stmt_bind_param($stmt, "s", pwd_hash($pwd));

    mysqli_stmt_execute($stmt);
    mysqli_stmt_bind_result($stmt, $uid);
    mysqli_stmt_fetch($stmt);
    mysqli_stmt_close($stmt);
    mysqli_close($db);

    return $uid or null;
}

?>
