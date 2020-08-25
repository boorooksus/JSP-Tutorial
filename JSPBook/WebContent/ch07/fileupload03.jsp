<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>file upload</title>
</head>
<body>
	<form name="fileForm" enctype="multipart/form-data" action="fileupload03_process.jsp" method="post">
		<input type="file" name="filename"><br>
		<input type="submit">
	</form>
