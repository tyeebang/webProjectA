<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");

	String pw = request.getParameter("pw");
	
	if (id.equals("admin") && pw.equals("1234") || id.equals("user") && pw.equals("1234") || id.equals("wnsdn1269") && pw.equals("wnsdn9307")) {
		session.setAttribute("logOK", id);
		response.sendRedirect("index.jsp");
	} else {
%>
		<script type="text/javascript">
			alert("로그인 실패");
			history.go(-1);
		</script>
<%
	}
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