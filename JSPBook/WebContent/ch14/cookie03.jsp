<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>session</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		
		out.println("number of cookies created: " + cookies.length + "<br>");
		out.println("==========================================<br>");
		
		for(int i = 0; i < cookies.length; i++){
			out.println("쿠키 속성 이름[" + i + "]: " + cookies[i].getName() + "<br>");
			out.println("쿠키 속성 값[" + i + "]: " + cookies[i].getValue() + "<br>");
			out.println("-------------------------------------------<br>");
		}
		
		out.println("==========================================<br>");
		out.println("쿠키 삭제<br>");
		
		for(int i = 0; i < cookies.length; i++){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
		
		
		cookies = request.getCookies();
		
		out.println("number of cookies created: " + cookies.length + "<br>");
		out.println("==========================================<br>");
		
		for(int i = 0; i < cookies.length; i++){
			out.println("쿠키 속성 이름[" + i + "]: " + cookies[i].getName() + "<br>");
			out.println("쿠키 속성 값[" + i + "]: " + cookies[i].getValue() + "<br>");
			out.println("-------------------------------------------<br>");
		}
		
		response.sendRedirect("cookie02.jsp");
	%>
</body>
</html>
