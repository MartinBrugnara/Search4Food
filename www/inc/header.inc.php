    <header>
      <?php include('./libs/fb_runner.php'); ?> 
      <a href="index.php"><img src="static/img/logo.png" id="logo" alt="logo"></a>

      <?php if (!strpos($_SERVER['SCRIPT_NAME'], '/index.php')): ?>

      <?php
        $where = index_where();
        $when = index_when();
      ?>
      <form action="home.php" method="post" id="search_form">
        <input type="text" list="lst_where" name="wheat" placeholder="<?=$GLOBALS['dict']->wtoeat->{$_SESSION['lang']}; ?>">
        <datalist id="lst_where">
          <?php foreach($where as $i => &$e): ?>
            <option value="<?=$e->loc?>">
          <?php endforeach; ?>
        </datalist>
        <input type="text" list="lst_when" name="whent" placeholder="<?=$GLOBALS['dict']->wisp->{$_SESSION['lang']}; ?>">
        <datalist id="lst_when">
          <?php foreach($when as $i => &$e): ?>
            <option value="<?=$e->w?>">
          <?php endforeach; ?>
        </datalist>
        <a href="javascript:document.getElementById('search_form').submit()"><i class="fi-magnifying-glass">&nbsp;</i></a>
      </form>
      <?php endif; ?>

      <div class="options_wrapper">

        <?php
          $uri = $_SERVER['REQUEST_URI'];
          $uri = str_replace('lang=eng', '', $uri);
          $uri = str_replace('lang=ita', '', $uri);
          $uri = trim($uri, '?&');
        ?>
        <a href="<?= $uri ?><?= strpos($uri, "?") ? "&" : "?" ?>lang=eng" target="_self"><i class="flag en">&nbsp;</i></a>
        <a href="<?= $uri ?><?= strpos($uri, "?") ? "&" : "?" ?>lang=ita" target="_self"><i class="flag it">&nbsp;</i></a>
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
