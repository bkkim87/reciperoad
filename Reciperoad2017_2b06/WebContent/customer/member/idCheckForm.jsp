<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="DBBean.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="./lib/jquery-3.2.1.js">
</script>
<script>
$(document).ready(function(){
	var idRegex=/^[a-zA-z-\_]{5,20}/g;
	var hangleRegex=/.*[가-힣]+.*/g;
	var specialRegex =/[\{\}\[\]\/?.,;:|\)*~`!^\+<>@\#$%&\\\=\(\'\"]+/gi;
	var $mem_idLabel=$("#mem_idLabel");
	$("#mem_id").keyup(function(){
		var $idValue=$("#mem_id").val();
		if($idValue.length>=5 && $idValue.length<=20){
			if(idRegex.test($idValue)){	
				$mem_idLabel.html("사용가능한 아이디 형식입니다.");
				$mem_idLabel.css("color","green");
			}else if(hangleRegex.test($idValue)){
				$mem_idLabel.html("아이디에 한글이 들어가면 안됩니다.");
				$mem_idLabel.css("color","red");
			}else if(specialRegex.test($idValue)){
				$mem_idLabel.html("아이디에 -_을 제외한 특수문자가들어가면 안됩니다.");
				$mem_idLabel.css("color","red");
			}
		}else{
			console.log('무조건떠라');
			$mem_idLabel.html("5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
			$mem_idLabel.css("color","red")
		}
	});
})
</script>
<style>
input{
		height:40px; border-radius:5px;
		margin:auto;
	}
div{
	margin:auto;
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
                text-align: center;">아이디 중복체크</h1>

    	<div class="wrapper" style="width:386px; background-color:white; height:300px;  border:1px solid rgb(222,222,222); border-radius:5px; ">
        	<form action="idCheckPro.jsp" method="post" name="idcheck1" id="inputform" ><br><br>
               	<center><input type="text" name="mem_id" id="mem_id" size="40" required  placeholder="  아이디" pattern="^[a-zA-z-\_]{5,20}"  title="5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.">&nbsp;&nbsp;<br>
               	<label for="mem_id" id="mem_idLabel" style="font-size:13px; color:red;"></label><br><br></center>
                <center><input type="submit" value="확인" style="width:280px; height:40; font-size:15px; background-color:#2DBE60; color:white;" ></center>
          </form>
        </div>       
</body>
</html>
