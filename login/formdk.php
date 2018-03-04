<?php
$_SESSION = array();

include("captcha/simple-php-captcha.php");
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
<form style="margin: 0;" name="form1" method="post" action="ghidk.php">
	<table border="0" cellpadding="0" cellspacing="0">
    	<tr>
        	<td>Ten Dang Nhap</td>
            <td><input name="un" type="text"  /></td>
        </tr>
        <tr>
        	<td>Mat khau</td>
            <td><input type="password" name="pa" /></td>
        </tr>
        <tr>
        	<td>Nhap lai mat khau</td>
            <td><input type="password" name="repa" /></td>
        </tr>
        <tr>
        	<td>Email</td>
            <td><input name="email" type="email"  /></td>
        </tr>
        <tr>
              <td>Captcha</td> 
              <td><input type="text" name="captcha" id="captcha" /><br /></td>
        </tr>
        <tr>
			  <td><?php
                    echo '<img src="' . $_SESSION['captcha']['image_src'] . '" alt="CAPTCHA code">';
            
                ?></td>
    	</tr>
        <tr>
        	<td><input type="submit" name="login" value="Dang nhap" /></td>
        </tr>
    </table>
</form>
</body>
</html>