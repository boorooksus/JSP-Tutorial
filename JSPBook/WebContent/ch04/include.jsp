<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Action tag - include</title>
</head>
<body>
	<h2>This is first include page</h2>
	<jsp:include page="include_second.jsp" flush="false" />
	<p>This is footer of include page</p>
	
</body>
</html>