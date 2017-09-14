<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*,DBBean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%  request.setCharacterEncoding("utf-8"); %>

<%
  String mem_id= request.getParameter("mem_id");
  String passwd= request.getParameter("passwd");
  LogonDBBean logon=LogonDBBean.getInstance();
  logon.updatePw(mem_id, passwd);
  out.println("<script> alert('비밀번호가 수정되었습니다.');</script>");
  response.sendRedirect("index.jsp");
  %>
</body>
</html>