<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Main Sheet</title>
	<style>
	header{
		position:relative;
	}
	footer{
		clear:both;
	}
	#content{
		width:800px;
		margin:0 auto;
	}	#sub{
		border:2px solid;
		float:left;
		width:10%;
		margin: 20px 50px 0 0;
		padding: 10px;
	}
	#main{
	  position:relative;
	  padding:10px;
		float:center;
	}
	</style>
</head>
<body>
	<header>
	<jsp:include page="header.jsp" flush="false"/>
	</header>
	
   <div id="content">
   <section id="sub">
   	  <jsp:include page="left.jsp" flush="false"/>
   </section>
   
   <section id="main">
      <jsp:include page="content.jsp" flush="false"/>
   </section>
   </div>
	<footer>
	<jsp:include page="footer.jsp" flush="false"/>
	</footer>
</body>
</html>