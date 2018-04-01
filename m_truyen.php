<?php
include('lb/dbcon.php');
class M_truyen extends database{
	function getslide(){
		$sql = "SELECT * FROM slide";
		$this->setQuery($sql); 
		return $this->loadAllRows();
	}

	function getMenu(){
		$sql="SELECT * FROM theloai";
		$this ->setQuery($sql);
		return $this ->loadAllRows();
	}
	function getTruyen(){
		$sql="SELECT truyen.idTruyen,truyen.tenTruyen,tttruyen.hinhAnh,chapter.chuong,chapter.ngayDang
		 FROM truyen 
		 INNER JOIN tttruyen ON truyen.idTruyen=tttruyen.idTruyen 
		 INNER JOIN chapter ON truyen.idTruyen=chapter.idTruyen";
		 $this -> setQuery($sql);
		 return $this ->loadAllRows();
	}
	function hotTruyen(){
		$sql="SELECT truyen.idTruyen,truyen.tenTruyen,tttruyen.luotXem 
		from truyen 
		INNER JOIN tttruyen on truyen.idTruyen=tttruyen.idTruyen ORDER BY tttruyen.luotXem DESC";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}
} 
?>