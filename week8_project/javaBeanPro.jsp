<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Java Bean Pro</title>
	<style>
		table{ border: 1px solid black
		}
		td{ border: 1px solid black
		}
	</style>
</head>
<body>
	<h2>학생정보</h2>
	<hr>
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="s" class="ch10.Member"/>
	<jsp:setProperty property="*" name="s"/>
	
	<table>
	<tr>
	<td>학번</td><td><jsp:getProperty property="id" name="s"/></td>
	</tr>
	<tr>
	<td>이름</td><td><jsp:getProperty property="name" name="s"/></td>
	</tr>
	<tr>
	<td>학년</td><td><jsp:getProperty property="grade" name="s"/></td>
	</tr>
	<tr>
	<td>선택과목</td><td><jsp:getProperty property="subject" name="s"/></td>
	</tr>
	</table>
</body>
</html>