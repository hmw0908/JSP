<%@page	language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<jsp:useBean id="lb" class="beans.BeanLogin" scope="page"/>
<jsp:setProperty name="lb" property="*"/>
<!DOCTYPE html>
<html>
<head><title>[로그인]</title></head>
<style>body {font-size: 18pt;}</style>
<body>
<%	
	if(!lb.checkUser()) response.sendRedirect("login2.html");
	else  {
		session.setAttribute("cid", session.getId());
		session.setAttribute("id", request.getParameter("id"));
		session.setAttribute("pw", request.getParameter("pw"));
		response.sendRedirect("register.jsp");
	}
	%>&nbsp;&nbsp;
</body>
</html>