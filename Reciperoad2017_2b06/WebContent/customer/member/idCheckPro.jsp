<%@page import="DBBean.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="./lib/jquery-3.2.1.js"></script>
<script>
	
	function AutoInput(mem_id){
		opener.document.register.mem_id.value = mem_id;
		self.close();
	}
	var idRegex=/[^가-힣\{\}\[\]\/?.,;:|\)*~`!^\+<>@\#$%&\\\=\(\'\"]{5,20}/g;
	var hangleRegex=/[가-힣]+.*/g
	var $mem_idLabel=$("#mem_idLabel");
	$(document).ready(function(){
		$("#mem_id").keyup(function(){
			var idValue=$("#mem_id").val();
			if(idValue.length>=5 && idValue.length>=20){
				if(idregex.test(idValue)){	
					$mem_idLabel.html("사용가능한 아이디 형식입니다.");
					$mem_idLabel.css("color","green");
				}else if(hangleRegex.test(idValue)){
					$mem_idLabel.html("아이디에 한글이 들어가면 안됩니다.");
					$mem_idLabel.css("color","green");
				}else{
					$mem_idLabel.html("아이디에 -_을 제외한 특수문자가 들어가면 안됩니다.");
					$mem_idLabel.css("color","green");
				}
			}else{
				$mem_idLabel.html("5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
				$mem_idLabel.css("color","red")
			}
		});
		$("#idCheck").click(function(){
			var idValue=$("#idCheck").val();
			if(idregex.test(idValue)){
				document.inputform.submit();
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
<body onload="pValue()" style="background-color:#F3F3F3;">
<h1 style="color:rgb(106,106,106);
    			font-size: 32px;
                margin-bottom: 50px;
                margin-left: 0px;
                margin-right: 0px;
                margin-top: 50px;
                text-align: center;">아이디 중복체크</h1>
<% request.setCharacterEncoding("UTF-8");%>

<%
	String mem_id=request.getParameter("mem_id");
	LogonDBBean logon=LogonDBBean.getInstance();
	int x=logon.dupilicateCheck(mem_id);
	String str="";
	
	if(x==1){
		str=mem_id+"는 아이디로 사용하실 수 있습니다.";
	}else if(x==-1){
		str=mem_id+"는 아이디로 사용하실 수 없습니다.";
	}

%>
    	<div class="wrapper" style="width:386px; background-color:white; height:300px;  border:1px solid rgb(222,222,222); border-radius:5px; ">
        	<form action="idCheckPro.jsp" method="post" name="idcheck2" id="inputform" ><br><br>
               	<center><input type="text" name="mem_id" id="mem_id" onclick="JavaScript:AutoInput('<%=mem_id%>')" size="40"  placeholder="  아이디" required pattern="[^가-힣\{\}\[\]\/?.,;:|\)*~`!^\+<>@\#$%&\\\=\(\'\"]{5,20}">&nbsp;&nbsp;<br>
               	<lable for="mem_id" id="mem_idLabel"></lable><br></center>
                <center><input type="button" value="확인" id="idCheck"  style="width:280px; height:40; font-size:15px; background-color:#2DBE60; color:white;"></center>
          <%
          if(mem_id!=""){
        	%>
	          <p><%=str %></p>
	          <%if(x==1){ %>
	          	<center><input type="button" value="사용하기"   onclick="AutoInput('<%=mem_id%>')"id="useId" style="width:280px; height:40; font-size:15px; background-color:#000; color:white;"></center>
			  <%} %>
	  <%}else{
		  out.print("<script>alert('아이디를 입력해주세요');</script>");
	  	}%>
		  </form>
        </div>       

</body>
</html>
</body>
</html>
