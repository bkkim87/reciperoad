<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
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
		<%
			String realFolder="";//웹 어플리케이션 상의 절대 경로
			
			//파일이 업로드 되는 폴더를 지저안다.
			String saveFolder="fileSave";
			String encType="utf-8"; //인코딩 타입
			int maxSize=5*1024*1024;//최대 업로드될 파일 크기(5MB)
			
			ServletContext context=getServletContext();
			//현재 jsp페이지의 웹 어플리케이션상의 절대 경로를 구한다.
			
			realFolder = context.getRealPath(saveFolder);
			
			out.println("the realpath is : "+realFolder+"<br>");
			
			try{
				MultipartRequest multi =null;
				
				//전송을 담당할 콤포넌트를 생성하고 파일을 전송한다. 
				//전송할 파일명을 가지고 잇는 객체, 서버 상의 절대 경로, 최대 업로드될 파일크기, 문자코드, 기본 보안 적용
				multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());
				
				//Form의 파라미터의 목록을 가져온다
				Enumeration params =multi.getParameterNames();
				
				//파라미터를 출력한다.
				while(params.hasMoreElements()){
					String name=(String)params.nextElement();
					String value=multi.getParameter(name);
					out.println(name+"="+value+"<br>");
				}
				
				out.println("--------------------------------<br>");
				
				//전송한 파일 정보를 가져와 출력한다.
				Enumeration files=multi.getFileNames();
				
				//파일 정보가 있다면
				while(files.hasMoreElements()){
					//input 태그의 속성이 filie인 태그의 name 속성값 : 파라미터이름
					String name=(String)files.nextElement();
				
					//서버에 저장된 파일이름
					String filename=multi.getFilesystemName(name);
					
					//전송전 원래의 파일이름
					String original = multi.getOriginalFileName(name);
					
					//전송된 파일의 내용타입
					String type=multi.getContentType(name);
					
					//전송된 파일 속성이 file인 태그의 name 속성 값을  이용해 파일 객체 생성
					File file = multi.getFile(name);
					
					out.println("파라메터 이름 : " +name+"<br>");
					out.println("실제 파일 이름 : " +original+"<br>");
					out.println("저장된 파일 이름 : " + filename+"<br>");
					out.println("파일 타입 : " +type+"<br>");
					
					if(file!=null){
						out.println("크기:" +file.length());
						out.println("<br>");
					}
				}
			}catch(IOException ioe){
				System.out.println(ioe);
			}catch(Exception ex){
				System.out.println(ex);
			}
			%>
	</div>
</body>
</html>