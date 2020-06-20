<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
%>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>수정 Form</title>
</head>
<body>
	<h2>게시물 DATA 변경</h2>
	<form action="updatePro.jsp" method="post">
	<table>
	<tr>
		<td>아이디</td>	<td><input type="text" placeholder="숫자만 입력" name="id" value="<%=id%>"></td>
	</tr>
	<tr>
		<td>글제목</td>	<td><input type="text" name="subject"></td>
	</tr>
	<tr>
		<td>글내용</td>	<td><textarea class="form=control" name="content" rows="20" cols="50"></textarea></td>
	</tr>
	<tr>
		<td>글쓴이</td>	<td><input type="text" name="writer"></td>
	</tr>
	</table>
		<input type="submit" value="변경하기">
		<input type="button" value="삭제하기" onclick="location.href='delete.jsp?id=<%=id%>'">
		<input type="reset" name="다시작성">
	
	</form>
</body>
</html>