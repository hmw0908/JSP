<%@page	language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<jsp:useBean id="lb" class="beans.BeanLogin" scope="page"/>
<jsp:setProperty name="lb" property="*"/>
<!DOCTYPE html>
<html>
<head><title>[로그인 완료 및 신규 DM발송내역 입력]</title></head>
<style>body {font-size: 16pt; text-align: center;}
table, th, td {border: 1px solid black; text-align: center;}</style>
<body>
	JSESSIONID(<%=session.getAttribute("cid")%>)에서 관리자(<%=session.getAttribute("id")%>:<%=session.getAttribute("pw")%>)로 로그인<br>
	<div align="center">
	[DM발송내역 입력]<br>
	<form method="post" action="retrieve.jsp">
		고객아이디:<input type="text" name="cid" required size=5> 
		DM발송일:<input type="text" name="dmdate" required size=5> 
		<input type="submit" value="확인">
	</form>
	</div>
	
</body>
</html>