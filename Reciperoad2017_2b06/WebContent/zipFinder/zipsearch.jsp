<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="DBBean.bkkimDB" %>
<script>
	function AutoInput(zip, address){
		zip1 = zip.substring(0,3);
		zip2 = zip.substring(4,7);
		opener.nform.zip1.value = zip1;
		opener.nform.zip2.value = zip2;
		opener.nform.address1.value = address;
		self.close();
	}
</script>

<head>
	<title>검색결과</title>
</head>

<center><img src="image/post1.png"></center><br>
<table align=center border=0>
	<tr>
		<td bgcolor="#A3ACD5" width=100><font size=2><center>우편번호
		</center></font></td>
		<td bgcolor="#A3ACD5" width=350><font size=2><center>주소
		</center></font></td>
	</tr>
<%
	request.setCharacterEncoding("utf-8");

	bkkimDB usedb =new bkkimDB(); //DB 빈 클래스의 오브젝트화
		
	usedb.connect(); //빈 클래스를 이용한 데이터베이스 접속
	
	String dong = request.getParameter("dong");
	
	String sql = "select * from zipcode where DONG like '%"+dong+"%'";//질의 생성
	
	ResultSet rs = usedb.resultQuery(sql);
	
	if(rs.next()){
		do{
			String zip =rs.getString("ZIPCODE");
			String sido=rs.getString("SIDO");
			String gugun=rs.getString("GUGUN");
			String don=rs.getString("DONG");
			String ri=rs.getString("RI");
			String bunji=rs.getString("BUNJI");
			if(ri==null) ri="";
			if(bunji == null) bunji="";
			String address = sido+" "+gugun+" "+don+" "+ri+" "+bunji;
%>
<tr>
	<td bgcolor="#eeeeee"><center>
		<font size=2><a href="JavaScript:AutoInput('<%=zip %>' , '<%=address %>')"><%=zip %></a></font>
	</center></td>
	<td bgcolor="#eeeeee">&nbsp;&nbsp;&nbsp;
		<font size=2><a href="JavaScript:AutoInput('<%=zip %>' , '<%=address %>')"><%=address %></a></font>
	</td>
</tr>
<%
		}while(rs.next());
%>
</table>
<%	
	}
	else
	{
%>
</table>
<font size=2><center><br>찾고자 하는 동이 존재하지 않습니다.<br><br><br>
	다시 검색하려면 <a href=../ZipFinder/ZipInputForm.jsp>요기</a>를 누르세요~ </center></font>
<%
	}
%>
<br><br><br>
<center><a href="JavaScript:self.close()">닫기</a></center>
