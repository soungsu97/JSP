<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    %>
    
 <%
 	Class.forName("oracle.jdbc.driver.OracleDriver");
	//연결 정보 설정
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String pwd = "1111";
	
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	String sql = "SELECT * FROM BOARD";
	Statement st = con.createStatement();
	
	ResultSet rs = st.executeQuery(sql);
 %>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판 정보</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<h1 class="text-center font-weight-bold">게시판 정보</h1>
	<br>
	<br>
	<table class="table table-hover">
		<tr>
			<td>아이디</td>
			<td>글 제목</td>
			<td>글 내용</td>
			<td>글쓴이</td>
			<td>날짜</td>
		</tr>
		
<%
	while(rs.next()){
		String id = rs.getString("ID");
		String subject = rs.getString("SUBJECT");
		String content = rs.getString("CONTENT");
		String writer = rs.getString("WRITER");
		String regdate = rs.getString("REGDATE");
%>
		<tr>
			<td><a href="updateForm.jsp?id=<%=id %>"><%=id %></a></td>
			<td><%=subject %></td>
			<td><%=content %></td>
			<td><%=writer %></td>
			<td><%=regdate %></td>
		</tr>
<%}
	// 객체 해제
	con.close();
	st.close();
	rs.close();
%>

	</table>
	<button type="button" class="btn btn-primary" onclick="location.href='mainForm.jsp'">메인으로 가기</button>
	</div>
</body>
</html>