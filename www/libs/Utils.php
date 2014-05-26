<?php

# Martin Brugnara 2014
# martin.brugnara@gmail.com
# Camping Punta Indiani snc
# Search4Food 2014

class Utils {

    public static function &load_json($uri) {
        $content = self::load_file($uri);
        $obj = json_decode($content);
        if (json_last_error() !== JSON_ERROR_NONE)
            throw new Exception("Error parsing json", json_last_error());
        return $obj;
    }

    public static function &load_file($uri) {
        $content=file_get_contents($uri); 
        if ($content === FALSE)
            throw new Exception("Error loading the file", 1);
        return $content;
    }

    // Load config - set session vars
    public static function update_env() {
        $GLOBALS['env'] = Utils::load_json('./texts/config.json');

        if(session_id() == "") {
            session_start();
            // Used for Statistics
            if (isset($_SERVER['HTTP_REFERER']))
                $_SESSION['HTTP_REFERER'] = $_SERVER['HTTP_REFERER'];
        }

        /* lang */
        $lang = (
            (isset($_POST['lang']) ? $_POST['lang'] :
            (isset($_GET['lang']) ? $_GET['lang'] :
            (isset($_SESSION['lang']) ? $_SESSION['lang'] : 'eng')))
        );

        if (in_array($lang, $GLOBALS['env']->{'langs'}))
            $_SESSION['lang'] = $lang;
        else
            $_SESSION['lang'] = $GLOBALS['env']->{'langs'}[0];
    }

    public static function load_dict() {
        if(!isset($GLOBALS['dict']))
            $GLOBALS['dict'] = self::load_json('./texts/dict.json');
    }
}
?>
