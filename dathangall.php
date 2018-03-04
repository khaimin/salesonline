<?php
	session_start();
	include('dbcon.php');
	if (isset($_GET["idsp"])) {
		$kt=0;
		for($i=1;$i<=$_SESSION["somathang"];$i++){ 
			if ($_GET["idsp"]==$_SESSION["masp".$i]){
				$kt=1;
				break;
			}
		}
		if ($kt==0){
			$masp=$_GET["idsp"];
			$sql="select * from webtm_sanpham where idSP='$masp'";
			$result=mysql_query($sql,$link);
			if (mysql_num_rows($result)>0){
				$row=mysql_fetch_array($result);
				$_SESSION["somathang"]++;
				$i=$_SESSION["somathang"];
				$_SESSION["masp".$i]=$row["idSP"];
				$_SESSION["tensp".$i]=$row["UrlHinh"];
				$_SESSION["gia".$i]=$row["Gia"];
				$_SESSION["soluong".$i]=1;
			}
		}
		else {
				$_SESSION["soluong".$i]+=1;
		}
	}
	echo "<script>window.location='index.php?id=giohang'</script>";
?>