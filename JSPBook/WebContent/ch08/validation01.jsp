<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>file upload</title>
</head>
<body>
<script type="text/javascript">
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
