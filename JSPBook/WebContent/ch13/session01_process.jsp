<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
		
		if (user_id.equals("admin") && user_pw.equals("1234")){
			session.setAttribute("userId", user_id);
			session.setAttribute("userPw", user_pw);
			out.println("세션 설정 성공<br>");
			out.println("login: " + user_id);
		}
		else{
			out.println("session failed<br>");
		}
		
	%>
</body>
</html>
