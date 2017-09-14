<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/custom.css" rel="stylesheet">
<script src="./js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<form name="fileForm" method="post" enctype="mutipart/form-data" action="fileUpload.jsp">
		작성자:<input type="text" name="user"><br>
		제목:<input type="text" name="user"><br>
		<input type="file" name="uploadFile"><br>
		<input type="submit" value="파일 올리기">
	</form>
</body>
</html>