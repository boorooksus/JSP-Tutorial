<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 입력</title>
<style>
	a{
		text-decoration: none;
		color: black;
	}
</style>
</head>
<body>
	<H3>회원 정보 입력</H3>
	<form method="post" action="processAddUser.jsp">
		이름: <input type="text" name="name"><br>
		성별: 
		남자<input type="radio" name = "gender" value="man" checked>
		여자<input type="radio" name = "gender" value="woman"><br>
		취미: <input type="text" name="hobby"><br>
		전화번호: <input type="tel" name="tel"><br>
		<br>
		<input type="submit" value="추가">	
		<input type="reset" value="초기화">
	</form>
	<button onclick="location.href='users.jsp'">회원 정보 조회</button>
</body>
</html>