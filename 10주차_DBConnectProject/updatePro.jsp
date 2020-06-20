<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<%

request.setCharacterEncoding("utf-8");

	//연결 정보 설정
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String pwd = "1111";

	//1. DB 연동 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2. 연결 객체 생성
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	String sql = "UPDATE BOARD SET SUBJECT=?, CONTENT=?, WRITER=? WHERE ID=?";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("subject"));
	pstmt.setString(2, request.getParameter("content"));
	pstmt.setString(3, request.getParameter("writer"));
	pstmt.setString(4, request.getParameter("id"));
	
	//4. SQL 실행
	int i = pstmt.executeUpdate();
	
	//5. 객체 해제
	pstmt.close();
	con.close();
	
	response.sendRedirect("list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
</body>
</html>