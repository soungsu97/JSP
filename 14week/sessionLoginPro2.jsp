<%@page import="sjsp.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    
    //checkUser메소드 사용을 위해 LoginDAO생성
    LoginDAO dbPro = new LoginDAO();
    int check = dbPro.checkUser(id,pwd); //checkUser메소드 호출 및 반환값 얻어옴
    
    if(check==1){
    	session.setAttribute("id", id);
    	response.sendRedirect("sessionMain2.jsp");
    }else if(check==0){
    	%>
    	<script>
    	alert("비밀번호를 잘못입력하였습니다. 다시 로그인 하시기 바랍니다.");
    	location.href= "sessionLoginForm2.jsp";
    	</script>
    <%}else{
    %>
    <script>
    	alert("등록되지 않은 아이디입니다. 회원가입화면으로 이동합니다.");
    	location.href= "../12주차/insertDB.jsp";
    	</script>
    	<%}%>
    	