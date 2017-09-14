<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DBBean.*" %>
<% request.setCharacterEncoding("UTF-8");%>

<%
	String mem_id=request.getParameter("mem_id");
	String pwhint=request.getParameter("pwhint");
	String hintanswer=request.getParameter("hintanswer");
	
	LogonDBBean memMgr=LogonDBBean.getInstance();
	int x=memMgr.searchPw(mem_id, pwhint, hintanswer);
	
	if(x==1){
		response.sendRedirect("updatePwForm.jsp");
	}else if(x==-1){
		out.println("<script>alert('정보가 틀렸습니다.');</script>");
	}
%>
