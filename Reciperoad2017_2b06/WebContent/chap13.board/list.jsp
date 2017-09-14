<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="board.*" %>
<%@ page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat"%>

<%@ include file="color.jspf" %>

<%request.setCharacterEncoding("utf-8"); %>
<%!
	int pageSize=10;	//화면에 표시할 글목록의 개수
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>


<%
	String pageNum=request.getParameter("pageNum");
	
	if(pageNum==null){
		pageNum="1";	//list.jsp로 넘어 오는 pageNum 값이 없으면 기본값은 1로 지정
	}

	int currentPage=Integer.parseInt(pageNum);
	int startRow=(currentPage-1)*pageSize+1; //현 페이지 글목록에 표시할 시작 글번호를 설정하는 부분
	int endRow=currentPage*pageSize;	 //현 페이지 글목록에 표시할 마지막 글번호를 설정하는 부분
	int count=0; //전체 레코드 수를 구하기 위해  사용하는 변수
	int number=0;
	List<BoardDataBean> articleList = null;
	
	BoardDBBean dbPro = BoardDBBean.getInstance();
	count=dbPro.getArticleCount();//board테이블에 저장된 전체글의 수 마지막 글번호를 얻어냄(select문)<=list.jsp에서 사용
	
	if(count>0){
		articleList=dbPro.getArticles(startRow,pageSize);
	}
	
	number=count-(currentPage-1)*pageSize;
	//board테이블에 있는 모든 레코드 수 -( 현재 페이지 -1)*10
%>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<title>게시판</title>
</head>
<body bgcolor="<%=bodyback_c%>">
	<p>글목록(전체글:<%=count %>)</p>
	
	<table>
		<tr>
			<td align="right" bgcolor="<%=value_c %>">
				<a href="writeForm.jsp">글쓰기</a>
		 	</td>
		</tr>
	</table>
	
	<%if(count==0){ %>
	
	<table>
		<tr>
			<td align="center">
				게시판에 저장된 글이 없습니다.</td>
		</tr>
	</table>
	
	<%}else{%>
	<table>
		<tr height="30" bgcolor="<%=value_c %>">
			<td align="center" width="50">번호</td>
			<td align="center" width="250">제 목</td>
			<td align="center" width="100">작성자</td>
			<td align="center" width="150">작성일</td>
			<td align="center" width="50">조회</td>
			<td align="center" width="100">IP</td>
			<td align="center" width="100">글번호</td>
			<td align="center" width="100">ref(그룹화 아이디)</td>
			<td algin="center" width="100">restep(글순서)</td>
			<td align="center" width="100">re_level</td>
		</tr>
	<%
		for(int i=0;i<articleList.size();i++){
			BoardDataBean article=articleList.get(i);
	%>	
	<tr height="30">
		<td width="50"><%=number-- %></td>
		<td width="250" align="left">
	<%
		int wid=0;
		if(article.getRe_level()>0){
			wid=5*(article.getRe_level());
	%>
		<img src="./images/level.png"  width="<%=wid%>" height="16">
		<img src="./images/re.png">	
	<%}else{ %>
		<img src="./images/level.png"  width="<%=wid%>" height="16">
	<%} %>
		
		<a href="content.jsp?num=<%=article.getNum() %>&pageNum=<%=currentPage%>">
			<%=article.getSubject() %></a>
	<%if(article.getReadcount()>=20){ %>
			<img src="./images/hot.png" border="0" height="16"><%}%></td>
			<td width="100" align="left">
			<a href="mailto:<%=article.getEmail()%>"><%=article.getWriter()%></a></td>
			<td width="150"><%=sdf.format(article.getReg_date())%></td>
			<td width="50"><%=article.getReadcount() %></td>
			<td width="100"><%=article.getIp() %></td>
			<td width="100"><%=article.getNum()%></td>
			<td width="100"><%=article.getRef()%></td>
			<td width="100"><%=article.getRe_step()%></td>
			<td width="100"><%=article.getRe_level()%></td>
	</tr>
	<%} %>	
	</table>
	<%}%>
	<%
		if(count>0){
			int pageCount=count/pageSize+(count % pageSize==0?0:1);
			int startPage=1;
			
			if(currentPage % 10 !=0){
				startPage=(int)(currentPage/10)*10+1;
			}
			else
				startPage=((int)(currentPage/10)-1)*10+1;
			
			int pageBlock=10;
			int endPage=startPage+pageBlock-1;
			if(endPage>pageCount) endPage=pageCount;
			
			if(startPage>10){%>
				<a href="list.jsp?pageNum=<%=startPage-10%>">[이전]</a>
		<%}
			
			for(int i=startPage; i<=endPage;i++){%>
				<a href="list.jsp?pageNum=<%=i%>">[<%=i %>]</a>
		<%}
			if(endPage<pageCount){%>
				<a href="list.jsp?pageNum=<%=startPage+10%>">[다음]</a>
		<%
				}
			}
		%>
</body>
</html>
