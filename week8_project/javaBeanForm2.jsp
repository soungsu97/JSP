<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Write</title>
	<style>
	table{ border : solid 1px gray;}
	td{ border : solid 1px black;}
	</style>
</head>
<body>
	<h2>글쓰기</h2>
	<form action="javaBeanPro2.jsp" method="post">
	<table>
	<tr>
	<td colspan="3" style="text-align:right; Color:skyblue;">글목록</td>
	</tr>
	<tr>
	<td>이름</td> <td colspan="2"><input type="text" name="name"></td>
	</tr>
	<tr>
	<td>제목</td> <td colspan="2"><input type="text" name="title"></td>
	</tr>
	<tr>
	<td>이메일</td> <td colspan="2"><input type="text" name="email"></td>
	</tr>
	<tr>
	<td>내용</td> <td colspan="2"><textarea rows=20 cols=40 name="context"></td>
	</tr>
	<tr>
	<td>비밀번호</td> <td colspan="2"><input type="password" name="pwd"></td>
	</tr>
	<tr>
	<td colspan="3" style="text-align:center;"><input type="submit" value="글쓰기">
									<input type="reset" name="다시작성">
									<input type="button" value="목록보기">
	</td>
	</tr>
	</table>	
</body>
</html>