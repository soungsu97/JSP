<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>El Project</title>
</head>
<body>
	<h2>학번, 이름, 학년, 선택과목을 입력하는 폼</h2>
	<hr>
		<form action="javaBeanPro.jsp" method="post">
	학번       : <input type="text" name="id"><br>
	이름       : <input type="text" name="name"><br>
	학년       : <input type="radio" name="grade" value="1학년">1학년
					<input type="radio" name="grade" value="2학년">2학년<br>
	선택과목 : 	<select name="subject">
					<option value="JSP">JSP</option>
					<option value="JSP">HTML</option>
					<option value="JSP">JAVA</option>
					</select><br>
					<input type="submit" value="확인">
</body>
</html>