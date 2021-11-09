<?php
	include("connect.php");
	$idkhachhang=$_POST['idkhachhang'];
	$mangkhachhang=array();
	$query="SELECT * FROM taikhoan WHERE MaTaiKhoan = $idkhachhang";
	$data=$con->query($query);
	$mangkhachhang=array();
	while($row = $data->fetch_assoc()){
		array_push($mangkhachhang,
		new KhachHang(
		$row['MaTaiKhoan'],
		$row['Ho'],
		$row['Ten'],
		$row['Email'],
		$row['SDT'],
		$row['diachi']));
	}
	class KhachHang{
		function KhachHang($MaTaiKhoan,$Ho,$Ten,$Email,$SDT,$diachi){
			$this->MaTaiKhoan=$MaTaiKhoan;
			$this->Ho=$Ho;
			$this->Ten=$Ten;
			$this->Email=$Email;
			$this->SDT=$SDT;
			$this->diachi=$diachi;
		}
	}
	echo json_encode($mangkhachhang);
?>