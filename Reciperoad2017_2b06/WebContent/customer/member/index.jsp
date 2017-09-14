<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
	
	#header{
		display: table-cell;
	}
	#headerline1{
		margin-bottom: 10px;
	}
	ul {
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		background-color: #74B243;
	}

	#gnb {
		list-style-type: none;
		background-color: white;
		margin-right: 120px;
		margin-bottom: 30px;
	}
	
	#lnb{
		padding-left: 150px;
		padding-right: 150px;
	}
	
	#gnb li a {
		display: block;
		text-align: center;
		color: black;
		padding: 0px 9px;
		text-decoration: none;
		float: right;
	}
	
	
	#lnb {
		box-shadow: 0px 5px 20px #888888;
	}

	#lnb li a {
		display: block;
		font-size: 20px;
		color: white;
		text-align: center;
		padding: 9px 83px 9px 83px;
		margin-left: 8px;
		text-decoration: none;
		float: left;
	}
	img, input, span {
		vertical-align: middle;
	}


	#lnb li a:hover {
    	color : yellow;
	}
	
	.logo {
		margin: 10px 20px 50px 320px;
	}
	
	input{
		margin: 12px 12px 32px 30px;
		border-top-left-radius: 4px;
		border-bottom-left-radius: 4px;
		border-left-color: #D5D5D5;
		border-right-color: #74B243;
		border-top-color: #D5D5D5;
		border-bottom-color: #D5D5D5;
		border-style: solid solid solid solid;
		padding: 8px 100px;
		position: relative;
	}
	.headerline{
		display: inline;
		height: 150px;
	}
	#header input{
		margin-top: 0px;
		
	}
	.searchbtn{
		margin-left: -12px;
		margin-bottom: 33px;
	}
	.cart, .recipewrite{
		margin-left: 20px;
		margin-bottom: 40px;
	}
	.arrow_box {
		display: none;
		position: absolute;
		padding: 8px 8px 7px 8px;
		border-radius: 8px;
		background: #333;
		color: #fff;
	}
	.arrow_box:after{
		position: absolute;
		bottom: 100%;
		left: 50%;
		width: 0px;
		height: 0px;
		margin-left: -20px;
		border: solid transparent;
		border-width: 10px;
		pointer-events: none;
		content: "  ";
	}
	
	img:hover + p.arrow_box{
		display: inline-grid;
	}
	/* 메뉴 하단 */
	#body {
		background-color: #f1f1f2;
		margin: 10px 30px;
	}
	
	#identity_box{
		padding-bottom: 20px;
	}
	
	#identity{
		margin: 30px 210px 40px;
		padding: 10px 20px 0px 20px;
	}
	
	.identity-image{
		height: 30%;
		width: 30%;
		padding: 0px 10px;
	}
	
	#identity_button{
		background-color: #74B243;
		vertical-align: middle;
		border: none solid 1px;
		border-radius: 8px;
		height: 35px;
		width: 350px;
		padding-top: 5px;
		color: white;
		font-size: 20px;
		text-align: center;
		margin: 0px 530px 0px;
	}
	
	#boundary_line{
		vertical-align: middle;
		border: none solid ;
		background-color: #c3c3c3;
		height: 8px;
		width: 50px;
		margin: 40px 550px 0px;
		
	}
	.recipe_written{
		padding: 20px 100px 10px 110px;
		background-color: white;
	}
	
	#recipe_written_name{
		color: black;
		font-size: 35px;
		text-decoration: none;
	}
	
	#recipe_more_button{
		color: #c09773;
		text-decoration: none;
		border: 1px solid #c09773;
		padding: 5px 7px 5px 7px;
		margin-right: 30px;
		margin-left: 920px;
		margin-bottom: 80px;
	}
	
	#recipe_written_title{
		display: inline-block;
		float: left;
	}
	
	#recipe_row {
		display:inline-flex;
		height: 320px;
		margin-right: 73px;
	}
	
	.recipe_box {
		display: block;
		float: left;
		border: 1px solid #000000;
		box-shadow: 0px 1px 2px #888888;
		width: 270px;
		height: auto;
		margin: 2px 10px;
		flex: 1;
	}
	
	.recipe_box:hover {
		border: 1px solid #74B243;
	}
	
	#recipe_caption {
		padding: 15px;
		text-align: center;
	}
	
	.recipe_img {
		width: 270.5px;
		height: 202px;
	}
	
	.recipe_caption {
		padding: 7px 0px 0px 7px;
		font-size: 14px;
		color: gray;
		text-align: left;
	}
	
	span{
		color: black;
		float: left;
		font-size: 18px;
		font-weight: bold;
	}
	
</style>

</head>
<body>
<div>
<%if(session.getAttribute("id")==null) {%>
	<%@ include file="topLogin.jspf" %>
<%}else{ %>
	<%@ include file="topLogout.jspf" %>
<%} %>
<div id="header">
<div class="headerline" id="headerline1">
	<a href="#"><img class="logo" src="image/로고색상.png" width="227" height="47"></a>
	<input type="search"><a href="#"><img class="searchbtn" src="image/검색.png" width="55px" height="36px"></a>
	<a class="button_a" href="#" style="text-decoration: none;"><img class="cart" src="image/shopping-store-cart-new.png" width="50" height="50" style=" margin-left: 50px;">
	<p class="arrow_box">장바구니</p></a>
	<a class="button_a" href="#" style="text-decoration: none;"><img class="recipewrite" src="image/checkbox-pen-outline-new.png" width="50" height="50" style="">
	<p class="arrow_box">레시피 작성</p></a>
	<img class="norequire" src="image/shopping-store-cart-white.png" width="50" height="50" style=" margin-left: 50px;">
</div>
</div>
<div>
	<ul id="lnb">
 	 	<li><a href="#home">홈</a></li>
  		<li><a href="#recipe">레시피</a></li>
 	 	<li><a href="#info">요리정보</a></li>
 	 	<li><a href="#food">식료품</a></li>
 	 	<li><a href="#mypage">마이페이지</a></li>
	</ul>
</div>
</div>

<div id="body">
	<div id="identity_box" >
		<div id="identity">
			<img class="identity-image" src="image/explain-11.png">
			<img class="identity-image" src="image/explain-22.png">
			<img class="identity-image" src="image/explain-33.png">
		</div>
		<a href="#" style="text-decoration: none;" ><div id="identity_button">레시피 작성하기</div></a>
	</div>
	
	<div class="recipe_written">
		<div id="recipe_written_title">
			<div><span id="recipe_written_name" class="require_inline" href="#">인기 레시피</span>
				 <span id="recipe_more_button" class="require_inline" href="#" >더보기</span>
			</div>
		</div><br><br><br>
		<div id="recipe_row">
			<div class="recipe_box" >
				<div target="_blank">
					<img class="recipe_img" src="image/food01.jpg">
				</div>
				<div class="recipe_caption">
					<span>개맛있고 아이들이 먹기에도 ..</span><br>
					<h4>by 예수</h4>
				</div>
			</div>
			<div class="recipe_box" >
				<div target="_blank">
					<img class="recipe_img" src="image/food02.jpg">
				</div>
				<div class="recipe_caption">
					<span>개맛있고 아이들이 먹기에도 ..</span><br>
					<h4>by 예수</h4>
				</div>
			</div>
			<div class="recipe_box" >
				<div target="_blank">
					<img class="recipe_img" src="image/food03.PNG">
				</div>
				<div class="recipe_caption">
					<span>개맛있고 아이들이 먹기에도 ..</span><br>
					<h4>by 예수</h4>
				</div>
			</div>
			<div class="recipe_box" >
				<div target="_blank">
					<img class="recipe_img" src="image/food03.PNG">
				</div>
				<div class="recipe_caption">
					<span>개맛있고 아이들이 먹기에도 ..</span><br>
					<h4>by 예수</h4>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>
