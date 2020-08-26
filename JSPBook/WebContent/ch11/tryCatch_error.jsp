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
	error occurred<br>
	<%="num1: " + request.getParameter("num1") %>
	<%="num2: " + request.getParameter("num2") %>
</body>
</html>
