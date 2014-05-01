<?php

include_once 'libs/db.inc.php';

function secure_session_start() {
    if (session_id() === '')
        session_start();
}

// try login if success set session['uid']
function try_login($email, $pwd) {
    $uid = db_login($email, $pwd);
    if ($status !== null) {
        secure_session_start();
        $_SESSION['uid'] = $uid;
        return true;
    }
    return false;
}

function logout() {
    secure_session_start();
    session_destroy();
}

?>
