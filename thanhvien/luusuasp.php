<?php
	include('../dbcon.php');
	//lay gia tri duoc gui tu trang suasp.php
	if(isset($_POST['add'])) {
		$idsp=$_POST['idsp'];
		$idloai=$_POST['idLoai'];
		$gia=$_POST['gia'];
		$mota=$_POST['mota'];
		
		//===================================================================
		//upload hinh moi neu ton tai hinh moi
		if(isset($_FILES['hinh']['name']))
		{
			$target_dir = "../images/";
			$target_file = $target_dir . basename($_FILES["hinh"]["name"]);
			$uploadOk = 1;
			$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);//lay phan mo rong cua file
			// Check if image file is a actual image or fake image
			if(isset($_POST["Submit"])) {
				$check = getimagesize($_FILES["hinh"]["tmp_name"]);
				if($check !== false) {
					echo "File is an image - " . $check["mime"] . ".";
					$uploadOk = 1;
				} else {
					echo "File is not an image.";
					$uploadOk = 0;
				}
			}
			// Check if file already exists
			if (file_exists($target_file)) {
				echo "Sorry, file already exists.";
				$uploadOk = 0;
			}
			// Check file size
			if ($_FILES["hinh"]["size"] > 500000) { //dv: bytes
				echo "Sorry, your file is too large.";
				$uploadOk = 0;
			}
			// Allow certain file formats
			if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
			&& $imageFileType != "gif" ) {
				echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
				$uploadOk = 0;
			}
			// Check if $uploadOk is set to 0 by an error
			if ($uploadOk == 0) {
				echo "Sorry, your file was not uploaded.";
			// if everything is ok, try to upload file
			} else {
				if (move_uploaded_file($_FILES["hinh"]["tmp_name"], $target_file)) {
					echo "The file ". basename( $_FILES["hinh"]["name"]). " has been uploaded.";
				} else {
					echo "Sorry, there was an error uploading your file.";
				}
			}
		}
		
		
		//============================================================
			//upload thanh cong
			if($uploadOk==1)
			{
				$urlhinh=$_FILES['hinh']['name'];
				
				echo $s="update webtm_sanpham set idLoai='$idloai', Gia='$gia', UrlHinh='$urlhinh', MoTa='$mota' where idSP='$idsp'";
			}
			else
			{
					$s="update webtm_sanpham set idLoai='$idloai', Gia='$gia', MoTa='$mota' where idSP='$idsp'";
			}
			$kq=mysql_query($s,$link);
			if($kq==true) {
				echo 'sua thanh cong';
			}
			else
			echo "fail";
		
			
				/*$kq=mysql_query($s,$link);
				if($kq==true) {
					echo 'sua thanh cong';
					echo "<script>window.location='index.php?id=dssp'</script>";
				}
			}
			else echo "upload fail";
		}
		
		// truong hop khong thay doi hinh anh
		else
		{
			echo $s="update webtm_sanpham set idLoai='$idloai', Gia='$gia', MoTa='$mota' where idSP='$idsp'";
			$kq=mysql_query($s,$link);
			if($kq==true) {
				echo 'sua thanh cong';
				echo "<script>window.location='index.php?id=dssp'</script>";
	
			}
		}*/
	}
	else
	{ 
		echo "sua that bai";
		echo "<script>window.location='index.php?id=loai'</script>";
	}
	if(isset($_POST['back'])) {
			echo "<script>window.location='index.php?id=loai'</script>";
	}
	
?>