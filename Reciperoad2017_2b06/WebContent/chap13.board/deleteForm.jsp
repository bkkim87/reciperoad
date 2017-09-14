<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ include file="color.jspf" %>

<%
	int num=Integer.parseInt(request.getParameter("num"));
	String pageNum=request.getParameter("pageNum");
	
%>
<html>
<head>
<meta charset="utf-8">
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	
	function deleteSave(){
		if(!document.delForm.passwd.value){
			alert("비밀번호를 입력하십시오.");
			document.delForm.passwd.focus();
			return false;
		}
	}
</script>
</head>
<body bgcolor="<%=bodyback_c%>">
	<p>글삭제</p>
	<br>
	<form method="post" action="deletePro.jsp?pageNum=<%=pageNum%>"
		onsubmit="return deleteSave()">
		<table>
			<tr height="30">
				<td align="center" bgcolor="<%=value_c %>">
					<b>비밀번호를 입력해 주세요.</b>
				</td>
			</tr>
			<tr height="30">
				<td align="center">
					<input type="password" name="passwd" size="8" maxlength="12">
					<input type="hidden" name="num" value="<%=num %>">
				</td>
			</tr>
			<tr height="30">
				<td align="center" bgcolor="<%=value_c%>">
					<input type="submit" value="글삭제">
					<input type="button" value="글목록"
					onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
