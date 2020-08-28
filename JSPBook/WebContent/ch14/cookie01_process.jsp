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
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pwd");
		
		if(user_id.equals("admin") && user_pw.equals("1234")){
			Cookie cookie_id = new Cookie("userId", user_id);
			Cookie cookie_pw = new Cookie("userPw", user_pw);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.println("cookies are created<br>");
			out.println(user_id + " welcome");
		} else{
			out.println("cookie creation failed<br>");
		}
	%>
</body>
</html>
