<?php
/**
 * Copyright 2011 Facebook, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may
 * not use this file except in compliance with the License. You may obtain
 * a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */
$user = NULL;
try {
  require './libs/facebook.php';
} catch (Exception $e) {
    print("<!-- FACEBOOK error: $e -->");
    return;
}
require './libs/db.php';
require './libs/core.php';

// Create our Application instance (replace this with your appId and secret).
$facebook = new Facebook(array(
  'appId'  => '297395890419563',
  'secret' => '3befb5f604b6b45ccf26089cd1788917',
));

// Get User ID
$user = $facebook->getUser();

// We may or may not have this data based on whether the user is logged in.
//
// If we have a $user id here, it means we know the user is logged into
// Facebook, but we don't know if the access token is valid. An access
// token is invalid if the user logged out of Facebook.

if ($user) {
  try {
    // Proceed knowing you have a logged in user who's authenticated.
    $user_profile = $facebook->api('/me');

    $us = Q("SELECT user_id FROM users WHERE fb_extid = ".intval($user));
    if (count($us))
      $_SESSION['user_id'] = $us[0]->user_id OR -1;
    else
      ; // user is not in db
  } catch (FacebookApiException $e) {
    print("<!-- FACEBOOK error: $e --> ");
    //error_log($e);
    $user = null;
  }
}

// Login or logout url will be needed depending on current user state.
if (!$user) $loginUrl = $facebook->getLoginUrl();
?>
