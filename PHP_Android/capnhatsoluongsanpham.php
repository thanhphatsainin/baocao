<?php
	include("connect.php");
	$id=$_POST['id'];
	$soluong=$_POST['soluong'];
	$sql = "UPDATE sanpham SET SoLuong = '$soluong' where id = '$id'";
	if($con->query($sql)){
		echo "success";
	}else{
		echo "error";
	}
?>