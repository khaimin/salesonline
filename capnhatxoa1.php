<?php
session_start();
	
	if(isset($_POST['Button1'])) {	
		for($i=1;$i<=$_SESSION["somathang"];$i++){
			if ($_POST["C".$i]=="") {
				$_SESSION["soluong".$i]=1;
			}
			else{
				$_SESSION["soluong".$i]=$_POST["C".$i]; 
			}
		}
	}
	else {
		for($l=$_SESSION['somathang'];$l>=1;$l--){
			if(isset($_POST['x'.$l]))
			{
				if($_POST['x'.$l]=="on") {
					for($i=$l;$i<$_SESSION['somathang'];$i++) {
						$j=$i+1; 
						$_SESSION["masp".$i]=$_SESSION["masp".$j]; 
						$_SESSION["tensp".$i]=$_SESSION["tensp".$j];
						$_SESSION["soluong".$i]=$_SESSION["soluong".$j]; 
						$_SESSION["gia".$i]=$_SESSION["gia".$j];
					}
					$k=$_SESSION["somathang"]; 
					unset($_SESSION["masp".$k]); 
					unset($_SESSION["tensp".$k]); 
					unset($_SESSION["soluong".$k]);
					unset($_SESSION["gia".$k]); 
					$_SESSION["somathang"]--;
				}
			}
		}
		
	}
	echo "<script language='javascript'>location.href='index.php?id=giohang';</script>"; 
?>