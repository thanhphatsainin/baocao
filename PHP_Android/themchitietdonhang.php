<?php
	include("connect.php");
	$json=$_POST['json'];
	$data=json_decode($json,true);
	foreach($data as $value){
		$madonhang=$value['madonhang'];
		$masanpham=$value['masanpham'];
		$soluongsanpham=$value['soluongsanpham'];
		$tientungsanpham=$value['tientungsanpham'];
		$query="INSERT INTO chitiecdonhang(id,madonhang,masanpham,soluongsanpham,tientungsanpham) 
		VALUES (null,'$madonhang','$masanpham','$soluongsanpham','$tientungsanpham')";
		$Dta=$con->query($query);
	}
	if($Dta){
		echo "success";
	}else{
		echo "error";
	}
	
?>