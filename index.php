<?php
require "lb/dbcon.php";
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="src/style.css">
	<script src="js/jquery-3.3.1.min.js" type="text/javascript"> </script>
	<script src="js/script.js" type="text/javascript" charset="utf-8" async defer></script>
</head>
<body>
	<div id="wrapper">
		<div id="header">	
			<div id="search">
				<form>
    				<input type="search" placeholder="Search">
				</form>
			</div>
		</div>
		<div id="menu">
			<ul>
    			<li><a href="#">Trang chủ</a></li>
    			<li><a href="#">Diễn đàn</a></li>
    			<li><a href="#">Tin tức</a></li>
    			<li><a href="#">Hỏi đáp</a></li>
    			<li><a href="#">Liên hệ</a></li>
  			</ul>
		</div>
		<div id="wrap-slide">
				<a href=""><img class="slides" src="1.jpg"/></a>
				<a href=""><img class="slides" src="2.jpg"/></a>
				<a href=""><img class="slides" src="3.jpg"/></a>
				<button class="btn" onclick="plusIndex(-1)" id="btn1">&#10094;</button>
				<button class="btn" onclick="plusIndex(1)" id="btn2">&#10095;</button>
		</div>
		<div id="content">
			<div id="list-new" style="text-align: center;">
				<h2>Truyện mới:</h2>
			</div >
			<div class="">
			</div>
		</div>
		<div id="right" >
			<?php
			require ("views/truyenhhot.php");
			?>
		</div>
		<div id="footer">footer</div>	
	</div>

</body>
<script>
	var index = 1;
	function plusIndex(n){
		index = index + n;
		showimage(index);
	}
	showimage(1);
	function showimage(n){
		var i;
		var x =document.getElementsByClassName("slides");
		if(n > x.length){ index = 1 };
		if(n < 1) { index = x.length };
		for( i=0 ;i < x.length ; i++ ){
			x[i].style.display="none";
		}
		x[index - 1].style.display= "block";
	}
	autoSlide();
	function autoSlide(){
		var i;
		var x =document.getElementsByClassName("slides");
		for( i=0 ;i < x.length ; i++ ){
			x[i].style.display="none";
		}
		if(index > x.length){ index = 1 }
		x[index - 1].style.display= "block";
		index++;
		setTimeout(autoSlide,2000);
	}
</script>
</html>