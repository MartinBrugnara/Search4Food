    <header>
      <img src="/static/img/logo.png" id="logo" alt="logo">

      <?php if ($_SERVER['SCRIPT_NAME'] != '/index.php'): ?>
      <input type="text" placeholder="<?=$GLOBALS['dict']->wtoeat->{$_SESSION['lang']}; ?>">
      <input type="text" placeholder="<?=$GLOBALS['dict']->wisp->{$_SESSION['lang']}; ?>">

      <!-- TODO: bind event to search -->
      <a><i class="fi-magnifying-glass">&nbsp;</i></a>
      <?php endif; ?>

      <div class="options_wrapper">
        <a href="<?=$_SERVER['SCRIPT_NAME']?>?lang=eng" target="_self"><i class="flag en">&nbsp;</i></a>
        <a href="<?=$_SERVER['SCRIPT_NAME']?>?lang=ita" target="_self"><i class="flag it">&nbsp;</i></a>
        <?php if(!$_GLOBALS['user']->is_logged): ?>
        <i class="fb">&nbsp;</i>
        <?php else: ?>
        <span class="user">Alex de biasio</span>
        <a href="/logout.php" class="logout"><?=$GLOBALS['dict']->logout->{$_SESSION['lang']}; ?></a>
        <?php endif; ?>
      </div>
    </header>
