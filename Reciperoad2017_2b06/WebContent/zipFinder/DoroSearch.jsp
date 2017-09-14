<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@page import="DBBean.bkkimDB"%>
<%@page import="java.util.*,java.util.regex.*"%>


 
<!DOCTYPE html>
<head>
	<title>검색 결과</title>
	<script src="text/javascript">
		function AutoInput(zipcode,address1){
			alert(zipcode+","+address);
			opener.document.all.register.zipcode.value=zipcode;
			opener.document.all.register.address1.value=address1;
			self.close();
		}
	</script>
	<style>
		#doroSearch {
			width: 80%;
		}
	
	</style>
</head><br>
<table align=center border=0 id="doroSearch">
	<tr>
		<td bgcolor="#a3acd5" width=100><font size=5><center>우편번호</center></font></td>
		<td bgcolor="#a3acd5" width=350><font size=5><center>주소</center></font></td>
	</tr>


<%
	bkkimDB usedb = new bkkimDB();
	request.setCharacterEncoding("utf-8");
	usedb.connect();
	String sido = request.getParameter("sido");
	String[] sigungus=request.getParameterValues("sigungu");
	String sigungu=null;
	for(int i=0;i<sigungus.length;i++){
		System.out.println(sigungus[i]);
		if(!sigungus[i].equals("none")){
			sigungu=sigungus[i];
		}
	}
	System.out.println("sigungu: "+sigungu);
	String place = request.getParameter("place");
	System.out.println("sido :"+sido+" sigungu :"+sigungu+"place :"+place);
	String em=null;//읍면
	String doroName=null;//도로명
	String bjd=null;//법정동
	String hjd=null;//행정동
	String ri=null;//리
	String buildingMN=null;//건물본번 main number
	String buildingSN=null;//건물부번 sub number
	String groundMN=null;//지번본번
	int groundSN=-1;//지번부번
	String buildingName=null;//시군구용건물명
	String bunji=null; //본번+부번
	
	String[] places= place.split("\\s");
	int placeLength=places.length;
	//공백으로 나눈 배열의 갯수를 length에 넣습니다.
	Pattern p = Pattern.compile("^[0-9]*[-]?[0-9]+$");
	for(int i=0;i<placeLength;i++){
		Matcher m = p.matcher(places[i]);
		if(places[i].endsWith("동")){
			bjd=places[i];
		}else if(places[i].endsWith("로")||places[i].endsWith("길")){
			doroName=places[i];
		}else if(m.find()){
			bunji=places[i];
		}else if(places[i].endsWith("읍")||places[i].endsWith("면")){
			em=places[i];
		}else if(places[i].endsWith("리")){
			ri=places[i];
		}else{
			buildingName=places[i];
		}
	}
	
	if(bunji!=null){
		String bunjis[]=bunji.split("[-]");
		for(int i=0;i<placeLength;i++){
			if(places[i].endsWith("동")){
				groundMN=bunjis[0];
				if(bunji.indexOf("-")!=-1){
					groundSN=Integer.parseInt(bunjis[1]);
				}
			}
			if(places[i].endsWith("로")||places[i].endsWith("길")){
				buildingMN=bunjis[0];
				if(bunji.indexOf("-")!=-1){
					buildingSN=bunjis[1];
				}
			}
		}
	}
	
	String sql=null;
	
	if(em==null) em="";
	if(ri==null) ri="";
	if(doroName==null) doroName="";
	if(bjd==null) bjd="";
	if(buildingMN==null) buildingMN="";
	if(buildingSN==null) buildingSN="";
	if(groundMN==null) groundMN="";
	if(buildingName==null) buildingName="";
	
	
	
	sql="select * from "+ sido+" where 시군구 ='"+sigungu+"'";
	sql+=" and 읍면 like '%"+em+"%' and 리명 like '%"+ri+"%'";
	sql+=" and 도로명 like '%"+doroName+"%' and 법정동명 like '%"+bjd+"%'";
	sql+=" and 건물번호본번 like '%"+buildingMN+"%' and 건물번호부번  like '%"+buildingSN+"%'";
	sql+=" and 지번본번 like '%"+groundMN+"%'";
	if(groundSN==-1) sql+= " and 지번부번 > "+groundSN;
	if(groundSN!=-1) sql+= " and 지번부번 = "+groundSN;
	sql+=" and 시군구용건물명  like '%"+buildingName+"%'";
	
	System.out.println(sql);
	ResultSet rs = usedb.resultQuery(sql);
	
	if(rs.next()) {
		do {
			String 우편번호 = rs.getString("우편번호");
			String 시도 = rs.getString("시도");
			String 시군구 = rs.getString("시군구");
			String 읍면 = rs.getString("읍면");
			String 리명= rs.getString("리명");
			String 도로명 = rs.getString("도로명");
			String 지번본번 = rs.getString("지번본번");
			int 지번부번 = rs.getInt("지번부번");
			String 지번부번s=Integer.toString(지번부번);
			String 건물번호본번 = rs.getString("건물번호본번");
			String 건물번호부번 = rs.getString("건물번호부번");
			String 시군구용건물명 = rs.getString("시군구용건물명");
			String 법정동명 = rs.getString("법정동명");
			
			if(건물번호부번==null) 건물번호부번=""; 
			if(시군구용건물명==null)시군구용건물명="";
			if(법정동명==null) 법정동명="";
			if(리명==null ) 리명="";
			if(지번본번==null ) 지번본번="";
			if(지번부번s==null) 지번부번s="";
			String 신주소 = 시도 + " " + 시군구 + " "  + 읍면 + 도로명 + " "  + 건물번호본번 + 건물번호부번 + " ( " + 법정동명 + 시군구용건물명+")";
			String 구주소 = 시도 + " " + 시군구 + " "  + 읍면 + 리명 +법정동명 + " " + 지번본번 + 지번부번s + 시군구용건물명;
%>
<tr>
	<td bgcolor="#eeeeee">
		<center>
			<font size=3 color="#ffffff">
				<a href="Javascript:AutoInput('<%=우편번호%>','<%=신주소%>')"><%=우편번호%>"><%=우편번호%></a>
			</font>
		</center>
	</td>
	
	<td bgcolor="#eeeeee">&nbsp;&nbsp;&nbsp;
		<font size=3 color="#ffffff">
			<a href="Javascript:AutoInput('<%=우편번호%>','<%=신주소%>')"><%=신주소%></a><br>
			<a href="Javascript:AutoInput('<%=우편번호%>','<%=구주소%>')"><%=구주소%></a>
		</font>
	</td>
</tr>

<%
		} while(rs.next());
%>
</table>
<%
	} else {
%>
</table>
<font size=2><center><br>찾고자하는 동이 존재하지 않습니다.<br><br><br>
다시 검색 하시려면 <a href="../DoroFrom.jsp">요기</a>를 누르세요 ~
</center>
</font>

<%

	}
%>

<br><br><br>
<center><a href="JavaScript:self.close()">닫기</a></center>

