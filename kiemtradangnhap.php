<?php
	session_start();
	if(isset($_SESSION['idkh'])) {
		echo "<script>window.location='index.php?id=donhang'</script>";
	}
	else {
		echo "<script>window.location='index.php?id=dn'</script>";
	}
?>