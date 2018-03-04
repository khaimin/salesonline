<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Slashdot's Menu</title>
	<link rel="stylesheet" type="text/css" href="sdmenu.css" />
	<script type="text/javascript" src="sdmenu.js">
	</script>
	<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
	</script>
  </head>
  <body>
   

    <div style="float: left" id="my_menu" class="sdmenu">
	  <?php
	  	include('dbcon.php');
		$s='select * from webtm_chungloaisp';
		$kq1=mysql_query($s,$link);
		while($d1=mysql_fetch_array($kq1)) {
			$idcl= $d1['idCL'];
			?>
            <div>
            	<span><?php echo $d1['TenCL']; ?></span>
                <?php
				$t="select * from webtm_loaisp where idCL='$idcl'";
				$kq2=mysql_query($t,$link);
				 while($d2=mysql_fetch_array($kq2)) {
				?>
                	<a href="#"><?php echo $d2['TenLoai']; ?></a>
                <?php
				}
				?>
            </div>
        <?php } ?>
	  ?>
    </div>

     
  </body>
</html>