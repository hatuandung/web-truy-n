<?php 
include('model/m_truyen.php');
class C_truyen{
	
	public function index(){

		$m_truyen = new M_truyen();
		$slide=$m_truyen->getslide();
		$menu = $m_truyen->getMenu();
		$ttTruyen=$m_truyen->getTruyen();
		$truyenhot=$m_truyen->hotTruyen();
		return array('menu'=>$menu,'slide'=>$slide,'Truyen'=>$ttTruyen,'hot'=>$truyenhot);
	}
}
?>