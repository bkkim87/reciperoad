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
		height:20px;
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
                text-align: center;">비밀번호 수정하기</h1>
<center>
    	<div class="wrapper" style="width:386px; background-color:white; height:300px;  border:1px solid rgb(222,222,222); border-radius:5px; ">
        	<form action="updatePwPro.jsp" method="post" name="login" id="inputform" ><br><br>
               	<input type="text" name="mem_id" size="40"  placeholder="  아이디"   onkeydown="inputIdCheck()" >&nbsp;&nbsp;<br><br>
                <input type="password" name="passwd" size="40"  placeholder="  비밀번호"   onkeydown="inputIdCheck()" >&nbsp;&nbsp;<br><br>
                <input type="password" name="repasswd" size="40"  placeholder="  비밀번호재설정"   onkeydown="inputIdCheck()" >&nbsp;&nbsp;<br><br>
                <center><input type="submit" value="확인" style="width:280px; height:40; font-size:15px; background-color:#2DBE60; color:white;"></center>
          </form>
        </div>       
</center>
</body>
</html>