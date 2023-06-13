<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String id = (String)session.getAttribute("logOK");
	
		if(id != null) {
	%>
			<p><%= id %>님이 로그인 상태입니다.</p>
			<a href="logout.jsp">로그아웃</a>
	<%
		} else {
	%>
			<h3>로그인 화면</h3>
			
			<form action="login.jsp" method="post">
				<p>ID : <input type="text" name="id"></p>
				<p>PW : <input type="password" name="pw"></p>
				<input type="submit" value="login">
			</form>
	<%
		}
	%>
</body>
</html>