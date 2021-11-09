<?php
	include("connect.php");
	$result= "SELECT * FROM sanpham ORDER BY Id DESC LIMIT 6";
	$data=$con->query($result);
	$mangloaisanphammoinhat=array();
	while($row = $data->fetch_assoc()){
		array_push($mangloaisanphammoinhat,
		new Sanphammoinhat(
		$row['id'],
		$row['tensanpham'],
		$row['giasanpham'],
		$row['hinhanhsanpham'],
		$row['motasanpham'],
		$row['idsanpham'],
		$row['SoLuong']));
	}
	class Sanphammoinhat{
		function Sanphammoinhat($id,$tensp,$giasp,$hinhanhsp,$motasp,$idsanpham,$SoLuong){
			$this->id=$id;
			$this->tensp=$tensp;
			$this->giasp=$giasp;
			$this->hinhanhsp=$hinhanhsp;
			$this->motasp=$motasp;
			$this->idsanpham=$idsanpham;
			$this->SoLuong=$SoLuong;
		}
	}
	echo json_encode($mangloaisanphammoinhat);
?>