<?php
	include("connect.php");
	$ma=$_POST['MaTaiKhoan'];
	$matkhau=md5($_POST['matkhau']);
	$sql="UPDATE taikhoan SET MatKhau='$matkhau' WHERE MaTaiKhoan = '$ma' ";
	if($con->query($sql))
	{
		echo "success";
		}
	else 
	{
		echo "error";
		}
?>