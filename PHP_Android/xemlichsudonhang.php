<?php
	include("connect.php");
	$idkhachhang=$_POST['idkhachhang'];
	$mangdonhang=array();
	$query="SELECT dh.id, tk.Ho, tk.Ten, dh.TONGTIEN, dh.NgayThanhToan, dh.DiaChi, dh.TrangThai, dh.HinhThucThanhToan FROM donhang dh, taikhoan tk where dh.idkhachhang = tk.MaTaiKhoan and dh.idkhachhang = $idkhachhang";
	$data=$con->query($query);
	$mangdonhang=array();
	while($row = $data->fetch_assoc()){
		array_push($mangdonhang,
		new DonHang(
		$row['id'],
		$row['Ho'],
		$row['Ten'],
		$row['TONGTIEN'],
		$row['NgayThanhToan'],
		$row['DiaChi'],
		$row['TrangThai'],
		$row['HinhThucThanhToan']));
	}
	class DonHang{
		function DonHang($id,$Ho,$Ten,$TONGTIEN,$NgayThanhToan,$DiaChi,$TrangThai,$HinhThucThanhToan){
			$this->id=$id;
			$this->Ho=$Ho;
			$this->Ten=$Ten;
			$this->TONGTIEN=$TONGTIEN;
			$this->NgayThanhToan=$NgayThanhToan;
			$this->DiaChi=$DiaChi;
			$this->TrangThai=$TrangThai;
			$this->HinhThucThanhToan=$HinhThucThanhToan;
		}
	}
	echo json_encode($mangdonhang);
?>