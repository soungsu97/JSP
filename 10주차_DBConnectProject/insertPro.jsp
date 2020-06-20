<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<%

 	request.setCharacterEncoding("utf-8");

	//연결 정보 설정
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String pwd = "1111";
	
	//1. 드라이브 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2. 연결 객체 생성
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	//3. SQL 삽입 준비
	String sql = "INSERT INTO BOARD VALUES(?, ?, ?, ?, sysdate)";
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, request.getParameter("id"));
	pst.setString(2, request.getParameter("subject"));
	pst.setString(3, request.getParameter("content"));
	pst.setString(4, request.getParameter("writer"));
	
	//4. SQL 실행
	int i = pst.executeUpdate();
	
	//5. 객체 해제
	pst.close();
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