<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>validation</title>
</head>
<body>
<script>
	function CheckForm(){
		alert("id: " + document.loginForm.id.value + "\n" + "password: " + document.loginForm.pwd.value);
	}
</script>
	<form name="loginForm">
		id: <input type="text" name="id"><br>
		pwd: <input type="password" name="pwd"><br>
		<input type="submit" onclick="CheckForm()">
	</form>

</body>
</html>
