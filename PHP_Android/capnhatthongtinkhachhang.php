<?php
	include("connect.php");
	$ma=$_POST['MaTaiKhoan'];
	$ho=$_POST['ho'];
	$ten=$_POST['ten'];
	$email=$_POST['email'];
	$sdt=$_POST['sdt'];
	$diachi=$_POST['diachi'];
	$sql="UPDATE taikhoan SET Ho='$ho', Ten='$ten', Email='$email', SDT='$sdt', diachi='$diachi'  WHERE MaTaiKhoan = '$ma' ";
	if($con->query($sql))
	{
		echo "success";
		}
	else 
	{
		echo "error";
		}
?>