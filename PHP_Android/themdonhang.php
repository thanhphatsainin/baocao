<?php
	include("connect.php");
	$id=$_POST['idkhachhang'];
	$tongtien=$_POST['tongtien'];
	$diachi=$_POST['diachi'];
	$trangthai=$_POST['trangthai'];
	$hinhthucthanhtoan=$_POST['hinhthucthanhtoan'];
	$today = date('Y-m-d');
	$week = strtotime(date("Y-m-d", strtotime($today)));
	$week = strftime("%Y-%m-%d", $week);
	$sql="INSERT INTO donhang(id,idkhachhang,TONGTIEN,NgayThanhToan,DiaChi,TrangThai,HinhThucThanhToan) VALUES(null,'$id','$tongtien','$week','$diachi','$trangthai','$hinhthucthanhtoan')";
	if($con->query($sql)){
		$iddonhang=$con->insert_id;
		echo $iddonhang;
	}else{
		echo "error";
	}
?>