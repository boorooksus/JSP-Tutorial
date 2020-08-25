<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>validation</title>
<script>
	function checkLogin(){
		var form = document.loginForm;
		if(form.id.value.length < 4 || form.id.value.length > 12){
			alert("possible id length: 5 to 11");
			form.id.select()
			return;
		} else if(form.pwd.value.length < 4 || form.pwd.value.length > 12){
			alert("possible password length: 5 to 11");
			form.pwd.focus();
			return;
		} else if(!isNaN(form.id.value.substr(0,1))){
			alert("first character of the id cannot be number");
			return;
		}
		
		form.submit();
	}
</script>
</head>
<body>
	<form name="loginForm" action="validation02_process.jsp" method="post">
		id: <input type="text" name="id"><br>
		pwd: <input type="password" name="pwd"><br>
		<input type="submit" onclick="checkLogin()">
	</form>

</body>
</html>
