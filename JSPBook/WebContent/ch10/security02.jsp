<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Security</title>
</head>
<body>
	사용자명: <%=request.getRemoteUser() %><br>
	인증방법: <%=request.getAuthType() %><br>
	인증한 사용자명이 역할명 "tomcat"에 속하는 사용자 여부: <%=request.isUserInRole("tomcat") %><br>
	인증한 사용자명이 역할명 "role1"에 속하는지 여부: <%=request.isUserInRole("role1") %>
</body>
</html>
