<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<script src="../lib/jquery-3.2.1.js"></script>
<script src="script.js"></script>
<style>
	input{
		height:30px; border-radius:5px; 
	}
	[type=checkbox],[type=radio],{
		height:16px;
	}
	select{
		height:30;
	}
</style>
</head>	
<body style="background-color:#F3F3F3;">
<h1 style="color:rgb(106,106,106);
    			font-size: 32px;
                margin-bottom: 50px;
                margin-left: 0px;
                margin-right: 0px;
                margin-top: 50px;
                text-align: center;">아이디찾기</h1>
<center>
    	<div class="wrapper" style="width:386px; background-color:white; height:250px;  border:1px solid rgb(222,222,222); border-radius:5px; ">
        	<form action="searchIdPro.jsp" method="post" name="login" ><br><br>
               	이름 &nbsp;&nbsp;&nbsp;<input type="text" name="mem_name" size="30"  placeholder="  이름"   onkeydown="inputIdCheck()" >&nbsp;&nbsp;<br><br>
                핸드폰번호
                <select name="tel1">
                					<option value="010">010</option>
                					<option value="011">011</option>
                					<option value="016">016</option>
                					<option value="019">019</option>
                </select>-<input type="text" name="tel2" size="4">-<input type="text" name="tel3" size="4"><br><br> <br>
                <input type="submit" value="확인" style="width:280px; height:40; font-size:15px; background-color:#2DBE60; color:white;">
          </form>
        </div>       
</center>
</body>
</html>
