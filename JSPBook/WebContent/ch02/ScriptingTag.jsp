<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	
	<%-- Declaration --%>
	<%! int cnt = 3;
	
	String toLower(String str){
		return str.toLowerCase();
	}
	%>
	
	<%-- Scriptlet --%>
	<%
		for (int i = 0; i < cnt; i++){
			out.println("cnt: " + i + "<br>");
		}
	%>
	
	<%-- Expression --%>
	<%=toLower("Hello World!") %>
</body>
</html>