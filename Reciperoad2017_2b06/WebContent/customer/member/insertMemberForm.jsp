<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="jquery-3.2.1.js"></script>
<script>
	$(document).ready(function(){
		//도로명주소 체크
		$(".place").click(function(){
			$(".place").blur();
			zipCheck();
		});
		//아이디 중복체크
		$("#mem_id").focus(function(){
			$("#mem_id").blur();
			idCheck();
		});
		
		//이름 유효성검사
		$mem_nameLabel=$("#mem_nameLabel");
		$("#mem_name").on("keyup",function(){
			var nameValue = $("#mem_name").val();
	        var nameRegex = /^[가-힣]{2,}$/g;
	 
	        if (nameRegex.test(nameValue)) {
	       		$mem_nameLabel.text("이름으로 사용하셔도 좋습니다.");
	       		$mem_nameLabel.css("color","green");
	        }
	        else{
	        	$mem_nameLabel.text("이름으로 하실 수 없습니다.");
	       		$mem_nameLabel.css("color","red");
	       	}
		});
		
		//휴대폰 유효성검사
		$phoneLabel=$("#phoneLabel");
		$("#phone").on("keyup",function(){
			var phoneValue = $("#phone").val();
	        var phoneRegex =/^01[0|1|6|7|9]+[-]?[\d]{3,4}[-]?[\d]{4}/gi;
	 
	        if (phoneRegex.test(phoneValue)) {
	       		$phoneLabel.text("핸드폰번호로 쓰실 수 있습니다.");
	       		$phoneLabel.css("color","green");
	        }
	        else{
	        	$phoneLabel.text("핸드폰번호 형식이 아닙니다.");
	       		$phoneLabel.css("color","red");
	       	}
		});
		//이메일유효성검사
		$emailLabel=$("#emailLabel");
		$("#email").on("keyup",function(){
			var emailValue = $("#email").val();
			var emailRegex=/[0-9a-zA-Z]*@[0-9a-zA-Z]+[.]+[0-9a-zA-Z]+[.]?[0-9a-zA-Z]{2,}/g;
	 
	        if (emailRegex.test(emailValue)) {
	       		$emailLabel.text("이메일 형식입니다..");
	       		$emailLabel.css("color","green");
	        }
	        else{
	        	$emailLabel.text("이메일형식이 아닙니다.");
	       		$emailLabel.css("color","red");
	       	}
		});
//비밀번호 유효성검사
	$passwdLabel=$("#passwdLabel");
	$("#passwd").on("keyup",function(){
		var passwdValue = $("#passwd").val();
		var alphaRegex=/[a-zA-Z]+/g;
		var numberRegex=/[\d]+/gi
		var specialRegex =/[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]+/gi;
		
		if(passwdValue.length>=6 && passwdValue.length<=20){
			if(alphaRegex.test(passwdValue)){
				$passwdLabel.text("숫자를 입력하세요");
				$passwdLabel.css("color","red");
				if(numberRegex.test(passwdValue)){
					$passwdLabel.text("특수문자를 입력하세요");
					$passwdLabel.css("color","blue");
					if(specialRegex.test(passwdValue)){
						$passwdLabel.text("사용가능한 비밀번호입니다.");
						$passwdLabel.css("color","green");
					}
				}
			}
			else if(numberRegex.test(passwdValue)){
				$passwdLabel.text("영소문자를 입력하세요");
				$passwdLabel.css("color","red");
				if(alphaRegex.test(passwdValue)){
					$passwdLabel.text("특수문자를 입력하세요");
					$passwdLabel.css("color","blue");
					if(specialRegex.test(passwdValue)){
						$passwdLabel.text("사용가능한 비밀번호입니다.");
						$passwdLabel.css("color","green");
					}
				}
			}
			else if(specialRegex.test(passwdValue)){
				$passwdLabel.text("영소문자를 입력하세요");
				$passwdLabel.css("color","red");
				if(alphaRegex.test(passwdValue)){
					$passwdLabel.text("숫자를 입력하세요");
					$passwdLabel.css("color","blue");
					if(numberRegex.test(pass)){
						$passwdLabel.text("사용가능한 비밀번호입니다.");
						$passwdLabel.css("color","green");
					}
				}
			}
		}else{
			$passwdLabel.html("특수문자,영소문자,숫자를 모두 포함해야하고<br> 6자이상 20자이하여야 합니다.");
			$passwdLabel.css("color","black");
		}
	});//비밀번호 유효성검사 끝
	
	//재비밀번호 유효성검사
	$repasswdLabel=$("#repasswdLabel");
	$("#repasswd").keyup(function(){
		$repasswdValue=$("#repasswd").val();
		$passwdValue=$("#passwd").val();
		if($repasswdValue==$passwdValue){
			$repasswdLabel.html("비밀번호와 일치합니다.");
			$repasswdLabel.css("color","green");
		}else{
			$repasswdLabel.html("비밀번호와 일치하지 않습니다.");
			$repasswdLabel.css("color","red");
		}
	})
	
})
	function zipCheck(){
		url="DoroForm.jsp";
		window.open(url,"post","toolbar=no,width=700, height=700,"+
				"directories=no,status=yes,scrollbars=yes,menubar=no");
	}
	
	function idCheck(){
		url="idCheckForm.jsp";
		window.open(url,"post","toolbar=no,width=500, height=500,"+
				"directories=no,status=yes,scrollbars=yes,menubar=no");
	}

</script>
<style>
	input{
	height:40px;
	border-radius:5px;
	}
	input [type=search] {
		width:284;
	}
	input [type=number]{
		width:284px;
	}
	input [type=radio]{
		width:150px;
	}
	lable{
		font-size:16px;
	}
	.wrapper{
		margin:auto;
		padding:auto;
		border-radius:5px; 
	}
	.form-container{
		padding:0;
		margin:0;
	}
	#register,h1{
		text-align: center;
	}
</style>
</head>	

<body style="background-color:#F3F3F3;">
	<div class="wrapper">
		<h1>회원가입</h1>
		<div class="form-container">
			<form action="insertMemberPro.jsp" method="post" name="register" id="register"><br><br>
				<input type="search" name="mem_id" id="mem_id" size="25"  placeholder="  아이디" pattern="[^가-힣\{\}\[\]\/?.,;:|\)*~`!^\+<>@\#$%&\\\=\(\'\"]{5,20}" >&nbsp;&nbsp;
				<input type="button" value="중복확인" onclick="idCheck()"><br>
				<label for="mem_id" style="font-size:13px; color:red;">필수 정보입니다.</label><br><br>
				<input type="password" id="passwd" name="passwd" placeholder="  비밀번호" size="40" required pattern="(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9])(?=.*[^가-힣]).{8,16}" ><br>
				<label for="passwd" id="passwdLabel" style="font-size:13px;"></label><br><br>
				<input type="password" name="repasswd" id="repasswd"  placeholder="  비밀번호 재확인" size="40" required ><br><br>
				<label for="repasswd" id="repasswdLabel" style="font-size:13px;"></label><br><br>
				<input type="search" id="phone" name="phone" placeholder="  핸드폰 번호(01x-xxxx-xxxx)" size="40" style='width:300px;' required pattern="^01[0|1|6|7|9]+[-]?[\d]{3,4}[-]?[\d]{4}"><br>
				<label for="phone" id="phoneLabel" style="font-size:13px;">핸드폰 번호(01x-xxxx-xxxx)</label><br><br>
				<input type="search" name="job" placeholder="  직업" size="40"><br><br>
				<input type="email" name="email" id="email"" placeholder="  이메일" size="40" pattern="^[0-9a-zA-Z]*@[0-9a-zA-Z]+[.]+[0-9a-zA-Z]+[.]?[0-9a-zA-Z]{2,}"><br>
				<label for="email" id="emailLabel" style="font-size:13px;"></label><br><br><br>
				<input type="number" name="zipcode" class="place" placeholder="  우편번호 " size="25"  required > &nbsp;&nbsp;&nbsp;
				<input type="button" value="검색하기" onclick="zipCheck()"><br><br>
				<input type="text" name="address1" placeholder="  주소"  class="place" size="40" required ><br><br>
				<input type="search" name="address2" placeholder="  상세주소" size="40" required ><br><br>
				<label>성별</label><br><br>
				<input type="radio" name="gender" value="male" checked>남성 &nbsp;&nbsp;&nbsp;
				<input type="radio" name="gender" value="female">여성<br><br><br>
				<input type="search" name="mem_name"  id="mem_name"  placeholder="  이름" size="40" required ><br>
				<label for="mem_name" id="mem_nameLabel"></label><br><br>
				주민등록번호<br><br>
				<input type="number" name="mem_num1" size="16"  required pattern="(?:[0-9]){2}(?:0[1-9]|1[0-2]){1}(?:0[1-9]|[1,2][0-9]|3[0,1]){1}">-
				<input type="number" name="mem_num2" size="16"  required pattern="[1-4][0-9]{6}"><br><br><br>
				비밀번호 힌트<br><br>
				<select name="pwhint" style="width:280; height:40" required >
					<option value="0">비밀번호 찾기 질문 선택</option>
					<option value="1">자신의 보물 1호는?</option>
					<option value="2">어머니의 고향은?</option>
					<option value="3">가장 존경하는 사람은?</option>
					<option value="4">나의 어릴 적 별명은?</option>
					<option value="5">자신의 신체결함이 있다면?</option>
					<option value="6">나의 첫사랑은?</option>
					<option value="7">나의 좌우명은?</option>
					<option value="8">내가 졸업한 초등학교는?</option>
					<option value="9">내가 졸업한 중학교는?</option>
					<option value="10">내가 졸업한 고등학교는?</option>
				</select><br><br>
				<input type="search" name="hintanswer"  placeholder="  힌트 답변" size="40" required ><br><br>
				<input type="submit" value="회원가입" style="width:280px; font-size:15px; background-color:#2DBE60; color:white;">
			</form>
		</div>
	</div>   
</body>
</html>
