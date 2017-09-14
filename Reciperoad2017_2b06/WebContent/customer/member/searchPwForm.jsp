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
                text-align: center;">비밀번호 찾기</h1>
<center>
    	<div class="wrapper" style="width:386px; background-color:white; height:350px;  border:1px solid rgb(222,222,222); border-radius:5px;">
            <br><br><form action="searchPwPro.jsp" method="post">
	        	<input type="text" name="mem_id" placeholder="  아이디" size="40"><br><br>
	               <select name="pwhint" style="width:280; height:40">
                		<option value="0">비밀번호 찾기 질문 선택</option>
                        <option value="1">자신의 보물 1호는?</option>
                        <option value="2">어머니의 고향은?</option>
                        <option value="3">가장 존경하는 사람은?</option>
                        <option value="4">나의 어릴 적 별명은?</option>
                        <option value="5">자신의 신체결함이 있다면?</option>
                        <option value="6">나의 첫사랑은?</option>
                        <option value="7">나의 좌우명은?</option>
                        <option value="8">내가 졸업한 초등학교는?</option>
                        <option value="9">내가 졸업한 중학교는?</option>
                        <option value="10">내가 졸업한 고등학교는?</option>
                </select><br><br>
                <input type="text"  name="hintanswer" placeholder="  질문 답변" size="40"><br><br>
	            <input type="submit" value="확인하기" style="width:280px; height:60; font-size:15px; background-color:#2DBE60; color:white;">
          </form>
        </div>       
</center>
</body>
</html>
