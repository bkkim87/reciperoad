<%@page import="DBBean.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>

<%
	String mem_name=request.getParameter("mem_name");
	String phone=request.getParameter("tel1")+(String)request.getParameter("tel2")+(String)request.getParameter("tel3");
	LogonDBBean searchBean = LogonDBBean.getInstance(); 
	String str=searchBean.searchId(mem_name, phone);
	out.print("<script> alert('"+str+"')</script>");
	response.sendRedirect("index.jsp");
%>

