<?php
	include("connect.php");
	$idkhachhang=$_POST['idkhachhang'];
        $idhoadon=$_POST['idhoadon'];
	$mangsanpham=array();
	$query="SELECT s.tensanpham,s.hinhanhsanpham,s.giasanpham,c.soluongsanpham,c.tientungsanpham
			FROM donhang d,chitiecdonhang c,sanpham s
			WHERE d.id=c.madonhang AND c.masanpham=s.id AND d.idkhachhang=$idkhachhang and d.id = $idhoadon";
	$data=$con->query($query);
	$mangsanpham=array();
	while($row = $data->fetch_assoc()){
		array_push($mangsanpham,
		new Sanpham(
		$row['tensanpham'],
		$row['hinhanhsanpham'],
		$row['giasanpham'],
		$row['soluongsanpham'],
		$row['tientungsanpham']));
	}
	class Sanpham{
		function Sanpham($tensp,$hinhanhsp,$giasp,$soluongsanpham,$tientungsanpham){
			$this->tensp=$tensp;
			$this->hinhanhsp=$hinhanhsp;
			$this->giasp=$giasp;
			$this->soluongsanpham=$soluongsanpham;
			$this->tientungsanpham=$tientungsanpham;
		}
	}
	echo json_encode($mangsanpham);
?>