<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSTL</title>
</head>
<body>
	<h3>hello 문자열 검색</h3>
	대소문자 구분: Hello World! => ${fn:contains("Hello, World!", "hello" )}<br>
	대소문자 구분x: Hello World! => ${fn:containsIgnoreCase("Hello, World!", "hello")}<br>


</body>
</html>
