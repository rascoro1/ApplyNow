<?php
echo '<header class="navbar navbar-default navbar-static-top" role="banner">';
  echo '<div class="container">';
    echo '<div class="navbar-header">';
      echo '<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">';
        echo '<span class="sr-only">Toggle navigation</span>';
        echo '<span class="icon-bar"></span>';
        echo '<span class="icon-bar"></span>';
        echo '<span class="icon-bar"></span>';
      echo '</button>';
      echo '<a href="index.html" class="navbar-brand">ApplyNow</a>';
    echo '</div>';
    echo '<nav class="collapse navbar-collapse" role="navigation">';
      echo '<ul class="nav navbar-nav">';
        echo '<li>';
          echo '<a href="upload_application.html">Upload Application</a>';
        echo '</li>';
        echo '<li>';
          echo '<a href="register.html">Register</a>';
        echo '</li>';
        echo '<li>';
          echo '<a href="login.html">Login</a>';
        echo '</li>';
      echo '</ul>';
    echo '</nav>';
  echo '</div>';
echo '</header>';
?>
