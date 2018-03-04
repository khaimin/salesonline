<?php
session_start();
$_SESSION = array();

include("simple-php-captcha.php");
//$_SESSION['captcha'] = simple_php_captcha();

$_SESSION['captcha'] = simple_php_captcha(array(
    'min_length' => 5,
    'max_length' => 5,
    'backgrounds' => array('backgrounds/kinda-jean.png'),
    'fonts' => array('fonts/times_new_yorker.ttf'),
    'characters' => 'ABCDEFGHJKLMNPRSTUVWXYZabcdefghjkmnprstuvwxyz23456789',
    'min_font_size' => 28,
    'max_font_size' => 28,
    'color' => '#666',
    'angle_min' => 0,
    'angle_max' => 10,
    'shadow' => true,
    'shadow_color' => '#fff',
    'shadow_offset_x' => -1,
    'shadow_offset_y' => 1
));



?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="check.php">
  <p>
    <label for="captcha"></label>
  Captcha <input type="text" name="captcha" id="captcha" /><br />
   <?php
        echo '<img src="' . $_SESSION['captcha']['image_src'] . '" alt="CAPTCHA code">';

    ?>
  </p>
  <p>
    <input type="submit" name="nut" id="nut" value="Submit" />
  </p>
</form>
</body>
</html>