    <header>
      <?php include('./libs/fb_runner.php'); ?> 
      <a href="index.php"><img src="static/img/logo.png" id="logo" alt="logo"></a>

      <?php if (!strpos($_SERVER['SCRIPT_NAME'], '/index.php')): ?>
      <form action="home.php" method="post" id="search_form">
        <input type="text" placeholder="<?=$GLOBALS['dict']->wtoeat->{$_SESSION['lang']}; ?>">
        <input type="text" placeholder="<?=$GLOBALS['dict']->wisp->{$_SESSION['lang']}; ?>">
        <a href="" onclick=""document.search_form.submit()"><i class="fi-magnifying-glass">&nbsp;</i></a>
      </form>
      <?php endif; ?>

      <div class="options_wrapper">
        <a href="<?=$_SERVER['SCRIPT_NAME']?>?lang=eng" target="_self"><i class="flag en">&nbsp;</i></a>
        <a href="<?=$_SERVER['SCRIPT_NAME']?>?lang=ita" target="_self"><i class="flag it">&nbsp;</i></a>
        <?php if(!$user): ?>
             <a href="<?=$loginUrl;?>"><i class="fb"></i></a>
        <?php else: ?>
        <span class="user">
            <?= $user_profile['name']; ?>
            &nbsp;
        </span>
        <a href="logout.php" class="logout"><?=$GLOBALS['dict']->logout->{$_SESSION['lang']}; ?>&nbsp;&nbsp;&nbsp;</a>
        <?php endif; ?>
      </div>
   </header>
