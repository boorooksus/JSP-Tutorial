<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive tag</title>
</head>
<body>
	<h4>=================footer==================</h4>
	<%!
		int pageCnt = 0;
		void addCnt(){
			pageCnt++;
		}
	%>
	<%
		addCnt();
	%>
	방문 횟수: <%=pageCnt %>
</body>
</html>