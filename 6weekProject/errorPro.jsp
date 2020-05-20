<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>500 error Main Page</title>
</head>
<body>
	<%
	String msg = null;
	
	boolean isHello = msg.equals("Hi Hi HI EveryBody");
	out.println("메시지는 hello, haha : " + isHello);
	%>   <!-- 500 에러를 발생시키기 위해 만든 코드 -->
</body>
</html>