<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
		import="java.util.Date, java.sql.*" %>
<jsp:useBean id="lb" class="beans.BeanJndi" scope="session"/>
<jsp:setProperty name="lb" property="*"/>
<html>
<head><meta charset="UTF-8"><title>DM발송내역 등록 및 조회</title></head>
<style>
	body, th, td {font-size: 18pt;}
	table, th, td {border: 1px solid black; text-align: center;}
</style>
<body>

<%	
	ResultSet rs1;
	String dmno, dmdate;
	String name, area, count;
	int cid;
	boolean ret;
	
	cid = Integer.parseInt(request.getParameter("cid"));
	
	dmdate = request.getParameter("dmdate");
	
	lb.connect();
		
	lb.createTables();
	
	ret = lb.insertDm(cid, dmdate);
	if (!ret) {
		response.sendRedirect("register.jsp");
	}
	rs1 = lb.selectDm();

%>
<div align="center">
[회원 조회]
<table>
	<tr><th>DM발송번호</th><th>고객이름</th><th>고객거주지역</th><th>DM발송일</th></tr>
	<%while(rs1.next()) {
		dmno = rs1.getString("dmno");
        name = rs1.getString("name");
        area = rs1.getString("area");
        dmdate = rs1.getString("dmdate"); %>
	<tr><td><%=dmno%></td><td><%=name%></td><td><%=area%></td><td><%=dmdate%></td></tr>
	<%}%>
</table>
<br>
<%rs1 = lb.selectDmName();%>
<table>
<tr><th>고객이름</th><th>DM발송횟수</th></tr>
<% while(rs1.next()){
	name = rs1.getString("name");
	count = rs1.getString("COUNT(*)");%>
	<tr><td><%=name%></td><td><%=count%></td></tr>
<%}%>
</table><br>
<%rs1 = lb.selectDmArea();%>
<table>
<tr><th>고객거주지역</th><th>DM발송횟수</th></tr>
<%
while (rs1.next()) {
	area = rs1.getString("area");
    count = rs1.getString("COUNT(*)");
    %>
    <tr><td><%=area%></td><td><%=count%></td></tr>
<%
}
lb.disconnect();
%>
</table>
</div>
</body>
</html>