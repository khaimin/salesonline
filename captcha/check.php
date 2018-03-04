<?php
session_start();
echo $_SESSION['captcha']['code'];
echo "<br>";
echo $_POST["captcha"];
?>