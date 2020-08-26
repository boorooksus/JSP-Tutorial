<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Exception</title>
</head>
<body>
	<%
		try{
			String num1 = request.getParameter("num1");
			String num2 = request.getParameter("num2");
			int a = Integer.parseInt(num1);
			int b = Integer.parseInt(num2);
			int c = a / b;
			
		} catch(NumberFormatException e){
			RequestDispatcher dispatcher = request.getRequestDispatcher("tryCatch_error.jsp");
			dispatcher.forward(request, response);
		}
	%>
</body>
</html>
