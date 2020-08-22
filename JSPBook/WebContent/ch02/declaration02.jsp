<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Declaration</title>
</head>
<body>
	<%! 
	int sum(int a, int b){
		return a + b;	
	}
	%>
	<%
		out.println("1 + 2 = " + sum(1, 2));
	%>
</body>
</html>