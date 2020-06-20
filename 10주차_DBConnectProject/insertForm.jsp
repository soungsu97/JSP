<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
	table{
	border : 1px black solid;
	}
	td{
	border : 1px solid black;
	}
	</style>
</head>
<body>
	<div class="container">
	<h1 class="text-center font-weight-bold">게시글 작성</h1>
	<form action="insertPro.jsp" method="post">
	<table class="table table-hover">
		<tr>
		<td>아이디</td>	<td><input type="text" placeholder="숫자만 입력하세요" name="id"></td>
		</tr>
		<tr>
		<td>글제목</td>	<td><input type="text" name="subject"></td>
		</tr>
		<tr>
		<td>글내용</td>	<td><textarea class="form=control" name="content" rows="15" cols="40"></textarea></td>
		</tr>
		<tr>
		<td>글쓴이</td>	<td><input type="text" name="writer"></td>
		</tr>
		</table>
		<input type="submit" value="작성완료">
		<input type="reset" value="다시작성">
		<button type="button" class="btn btn-primary" onclick="location.href='mainForm.jsp'">메인으로 가기</button>
	</form>
	</div>
</body>
</html>