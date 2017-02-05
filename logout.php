<?php
  session_start();
  session_destroy();
  header("location: index.php");
  //drop session and redirect to root i.e index.php
?>
