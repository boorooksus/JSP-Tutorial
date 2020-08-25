<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>validation</title>
<script>
	function checkMember(){
		
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var regExpName = /^[가-힣]*$/;
		
		
		var form = document.member;
		
		var id = form.id.value;
		var name = form.name.value;
		
		if(!regExpId.test(id)){
			alert("Not start with character");
			form.id.select();
			return;
		}else if(!regExpName.test(name)){
			alert("Name should be Korean")
			form.name.select();
			return;
		}
		
		form.submit();
	}
</script>
</head>
<body>
	<form name="member" action="validation03_process.jsp" method="post">
		id: <input type="text" name="id"><br>
		name: <input type="text" name="name"><br>
		pwd: <input type="password" name="pwd"><br>
		<input type="button" value="전송" onclick="checkMember()">
	</form>

</body>
</html>
