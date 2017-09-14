<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>
<link rel="stylesheet" type="text/css" href="loginform.css">
</head>

<body>
<div class="login-page">
  <div class="form">
  <img src="./images/loginlogo.png"><br><br>
    <form class="login-form" action="sessionLoginPro.jsp" method="post">
      <input type="text" name="mem_id" placeholder="username"/>
      <input type="password" name="passwd" placeholder="password"/>
      <input type="submit" value="로그인">
     </form>
       <p>
            <span class="fright"><a href="searchIdForm.jsp">아이디 찾기</a>&nbsp;|&nbsp;<a href="searchPwForm.jsp">비밀번호 찾기</a>&nbsp;|&nbsp;<a href="insertMemberForm.jsp">회원가입</a></span>
       </p>
     </div>
    
</div>