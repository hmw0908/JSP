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
	Cookie cid = new Cookie("id", request.getParameter("id"));
	Cookie cpw = new Cookie("pw", request.getParameter("pw"));
	
	if(!lb.checkUser()) response.sendRedirect("login1.html");
	else  {
		Cookie[] cookies = request.getCookies();// 쿠키 가져오기
		if (cookies != null) {
			out.println(cookies[2].getName()+"("+cookies[2].getValue()+")"+"에서 관리자("+cookies[0].getValue()+":"+cookies[1].getValue()+")로 로그인");
		}
	}	%>&nbsp;&nbsp;
</body>
</html>