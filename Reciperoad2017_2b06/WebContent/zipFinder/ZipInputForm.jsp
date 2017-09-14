<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소검색</title>
</head>
<body>
	<center><img src="image/logo.gif"></center><br>
	<table align=center cellpadding=15 cellspacing=0 width=450 border=0>
		<tr><td height=10></td></tr>
		<tr><td bgcolor=#F7F6EA>
			<font size=2 color=#7b775f>입력할 지역의 동이나 읍/면의 이름을
			빈칸없이 입력한 후 <br><br><b><[찾아보기]</b>버튼을
			누르세요.<br><br>우편번호까지 자동으로 찾아줍니다.
			<p></p>
			<b>보기</b>:신정3동, 목4동, 등촌3동, 신당동, 장기동, 보성읍</font>
		</td></tr>
	</table>
	<form method="post" action="zipsearch.jsp">
		<table align=center border=0>
			<tr>
				<td>
					<font size=2 color=#7b775f>
						읍/면/동 이름 <input type="text" placeholder="동이나 읍/면의 이름"  name="dong">
						<input type="submit" value="찾아보기">
					</font>
				</td>
			</tr>
		</table>	
	</form>
</body>
</html>