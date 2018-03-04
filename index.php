<?php
	session_start();
	if (!isset($_SESSION["somathang"])) {
		$_SESSION["somathang"]=0; }
	$tong=0;
	for($i=1;$i<=$_SESSION["somathang"];$i++) {
		$tong=$tong+$_SESSION["gia".$i]*$_SESSION["soluong".$i] ;
	$_SESSION['tonggia']=$tong;
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="lightbox2-master/dist/css/lightbox.min.css">

<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->

<title>2kShOp</title>
<style>
body {
	margin: 0;
	padding: 0;
	color:#FFF;
	//background-color:#CFC;
}
#container {
	width: 1024px;
	margin: 0 auto;
	min-height: 800px;
	
}
#top {
	width: 100%;
	background-color: #000;
	margin-bottom: 5px;
	height: 105px;
	color:#FFF;
	//border-bottom:#000 5px double;

}

#tim {
	height: 50px;
	padding-top:70px;
}
#left {
	margin-right: 5%;
	width: 15%;
	float: left;
	//border: 1px solid #000;
	
}
#right {
	width: 15%;
	float: right;
	//height: 600px;
	//background-color: green;
}
#main {
	width: 60%;
	float: left;
}
footer {
	width: 100%;
	height: 120px;
	clear:both;

}
#login {
	width:200px;
	height:100px;
	float: right;
	margin-top: 35px;
	margin-right: 40px;
	//border:#0C3 1px solid;
}
#left_login
{
	width:600px;
	height:100px;
	float:left;	
	//border:#0C3 1px solid;
}
.styletext{
	color:#FFF;
	text-decoration:none;
	font-size:18px;
	line-height:100px;
	}
.styletext:hover{
	color:#FF0;
}
#menu{
	padding-top:20px;
	//padding-left:20px;
	//border:1px solid #000;
	}
#giohang{
	padding-top:50px;
	
}
#qc1{
	margin-top:30px;
	//background-color:#036;
	height:400px;
	background-image:url(images/fashion_edit.jpg);
	
	}
#slideanh{
	width:800px;
	height:360px;
	//background-color:#CFC;
	margin:auto;
	}
</style>

</head>

<body>
<?php
	include('dbcon.php');
	$s="select * from webtm_sanpham order by Gia desc limit 0,6"; // 6 san pham co gia cao nhat
	$kq=mysql_query($s,$link);
?>

    <div id="top">
    	<div id="left_login">
        	<a style="text-decoration:none; color:#FFF; text-indent:20px; font-size:24px" href="index.php"><h1>2kShOp<span style="font-size:16px; color:#FFF;">&nbsp;&nbsp;&nbsp;&nbsp;Thỏa thích mua sắm, ngập tràn niềm vui!</span></h1></a>
          
        </div>
      	<div id="login">	
        <?php
			if(isset($_SESSION['UserName'])) {
				echo $_SESSION['Hoten'];
		?>
        		<a class="styletext" href="login/thoat.php">&nbsp;&nbsp;&nbsp;&nbsp;Thoát</a>
        <?php
			}
			else {
		?>
				 <a class="styletext" href="index.php?id=dn">Đăng nhập&nbsp;&nbsp;&nbsp;&nbsp;</a>
                 <a class="styletext" href="index.php?id=dk">Đăng kí</a>
        <?php
			}
		?>
        </div>
    </div>
    <div id="slideanh">
    
    	<!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><a href="http://vnexpress.net/xu-huong-thu-dong-2016/tag-718646-1.html" target="_blank"><img src="data1/images/1.jpg" alt="Trang phục Thu-Đông" title="Trang phục Thu-Đông" id="wows1_0"/></a></li>
		<li><a href="http://giaitri.vnexpress.net/photo/lang-mot/trao-luu-phoi-do-luom-thuom-gay-sot-tren-duong-pho-3498626.html" target="_blank"><img src="data1/images/2.jpg" alt="Thời trang 1" title="Thời trang 1" id="wows1_1"/></a></li>
		<li><a href="http://giaitri.vnexpress.net/photo/lang-mot/mot-ao-phao-khong-lo-len-ngoi-o-mua-lanh-2016-3496622.html" target="_blank"><img src="data1/images/3.jpg" alt="Thời trang 2" title="Thời trang 2" id="wows1_2"/></a></li>
		<li><a href="http://giaitri.vnexpress.net/photo/lang-mot/mot-keo-tut-ao-ro-len-nua-cuoi-nam-2016-3482351.html" target="_blank"><img src="data1/images/4.jpg" alt="Thời trang 3" title="Thời trang 3" id="wows1_3"/></a></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="Trang phục Thu-Đông"><span><img src="data1/tooltips/1.jpg" alt="Trang phục Thu-Đông"/>1</span></a>
		<a href="#" title="Thời trang 1"><span><img src="data1/tooltips/2.jpg" alt="Thời trang 1"/>2</span></a>
		<a href="#" title="Thời trang 2"><span><img src="data1/tooltips/3.jpg" alt="Thời trang 2"/>3</span></a>
		<a href="#" title="Thời trang 3"><span><img src="data1/tooltips/4.jpg" alt="Thời trang 3"/>4</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">bootstrap carousel</a> by WOWSlider.com v8.7</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
    	
    </div>
    <div id="container">
    	<div id="tim">
        	<?php
				include('tim.php');
			?>
        </div>
        <div id="left">
        	<div id="menu">
				<?php
                    include('menu.php');
                ?>
        	</div>
        </div>
        <div id="main">
        <?php
			if(!isset($_GET['id']))
			{
				include('spall-2.php');	
			}
			else
			{
				$id=$_GET['id'];
				switch ($id) {
					case "loai":{include('sptheoloai.php'); break;}
					case "tim":{include('kqtim-2.php');break;}
					case "dn":{include('login/dangnhap.php');break;}
					case "dk":{include('login/formdk.php');break;}
					case "giohang":{include('chitietgiohang.php');break;}
					case "donhang":{include('donhang.php');break;}	
					case "chitiet":{include('chitietsp.php'); break;}		
					default: include('spall-2.php');
				}
			}
        ?>
        </div>
        <div id="right">
        	<div id="giohang">
        		<?php include('gh.php'); ?>
        	</div>
            <div id="qc1">
            </div>
        </div>
    </div>
    <footer>
    	<div style="height:73%;background-color:#000">
    	<span style="color:#FFF">
        	<table align="center" width="800px" height="80px" style="padding-top:5px;">
            <tr>
            	<td>Home</td>
                <td>Facebook</td>
                <td>Shop</td>
                <td>Address</td>
                <td>Film</td>
            </tr>
             <tr>
            	<td>Radio</td>
                <td>Book</td>
                <td>Newspaper</td>
                <td>Company</td>
                <td>FAQs</td>
            </tr>
             <tr>
            	<td>Cookies Policy</td>
                <td>Terms & Conditions</td>
                <td>About us</td>
                <td>Vacancies</td>
            </tr>
            </table>
        </span>
        </div>
        <div style="height:27%; background-color:#333; font-size:20px; color:#666; text-indent:40px">
        2kShOp <span style="color:#CCC">© 2016</span>
        </div>
        
    </footer>
   
</body>

</html>