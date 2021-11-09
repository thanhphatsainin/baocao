<?php
	include("connect.php");
	$idhoadon=$_POST['idhoadon'];
	$sql="UPDATE donhang SET TrangThai='Đơn đã hủy'  WHERE id = '$idhoadon' ";
	if($con->query($sql))
	{
		echo "success";
		}
	else 
	{
		echo "error";
		}
?>