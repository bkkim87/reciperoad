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
	<div class="container">
			<h4 class="text-primary">글쓰기</h4>
			<form role="form">  
			<div class="form-group">   
			<label for="subject">제 목</label>
			<input type="text" name="subject" class="form-control" placeholder="아이디" id="subject" > 
		</div>  
		<div class="form-group">   
			<label for="subject">문의유형</label>
			<select name="qtype" class="form-control" id="qtype" >
				<option value="배송문의">배송문의</option>
				<option value="교환문의">교환문의</option> 
				<option value="결재문의">결제문의</option> 
				<option value="기타">기타문의</option>  
			</select>
		</div>  
		<div class="form-group">   
			<label for="subject">제 목</label>
			<input type="text" name="subject" class="form-control" placeholder="아이디" id="subject" > 
		</div>  
		<div class="form-group">   
			<label for="content">내 용</label>
			<textarea  rows="20"  name="content" class="form-control" placeholder="아이디" id="content" > 
			</textarea>
		</div>  
		<div class="form-inline"> 
			<input type="submit" class="btn btn-success form-control"" value="글쓰기"> 
			<input type="reset" class="btn btn-warning form-control"  value="다시작성"> 
			<a href="#" class="btn btn-info" role="button">목록보기</a>  
		</div>
		</form>
	</div>
</body>
</html>