    <header>
      <img src="img/logo.png" id="logo" alt="logo">
      <input type="text" placeholder="<?=$GLOABLS['dict']->wtoeat->{$_SESSION['lang']}; ?>">
      <input type="text" placeholder="<?=$GLOABLS['dict']->wisp->{$_SESSION['lang']}; ?>">

      <!-- TODO: bind event to search -->
      <a><i class="fi-magnifying-glass">&nbsp;</i></a>

      <div class="rw">
        <a href="<?=$_SERVER['SCRIPT_NAME']?>?lang=eng" target="_self"><i class="flag uk">&nbsp;</i></a>
        <a href="<?=$_SERVER['SCRIPT_NAME']?>?lang=ita" target="_self"><i class="flag it">&nbsp;</i></a>
        <i class="fb">&nbsp;</i>
      </div>
    </header>
