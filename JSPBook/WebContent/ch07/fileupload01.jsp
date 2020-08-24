<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>file upload</title>
</head>
<body>
	<form name="fileForm" enctype="multipart/form-data" action="fileupload01_process.jsp" method="post">
		<input type="file" name="filename"><br>
		<input type="submit">
	</form>

<%-- <%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" 	action="fileupload01_process.jsp">
		<p>	이 름  : <input type="text" name="name">
		<p>	제 목 : <input type="text" name="subject">
		<p>	파 일 : <input type="file" name="filename">
		<p>	<input type="submit" value="파일 올리기">
		</p>
	</form>
</body>
</html>
 --%>
	