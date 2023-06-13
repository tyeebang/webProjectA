<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resource/css/style.css">
</head>
<body>
    <div class="in_menu">
        <header>
            <ul class="global_menu">
                <a href="index.jsp"><img src="resource/img/logo.png" alt="logo"></a>
                <div class="menu">
                    <a href="#">BRAND</a>
                    <a href="#">MENU</a>
                    <a href="#">MEMBERSHIP</a>
                    <a href="#">STORE</a>
                </div>
                <div class="sign">
                    <a href="#">클레임</a>
                    <%
						String id = (String)session.getAttribute("logOK");
					
						if(id != null) {
					%>
							<div onclick="logout()">
								<p class="logout">로그아웃</p>
							</div>
					<%
						} else {
					%>
                    		<a href="./loginScene.jsp">로그인</a>
					<%
						}
					%>
                    <a href="#">회원가입</a>
                </div>
            </ul>
			<div class="userName">
                <%
                   	if(id != null) {
                %>
            	   		<p><%=id %>님</p>
                <%
              		}
               	%>
			</div>
        </header>

        <div class="inner_menu">
            <img src="https://rolling-pasta.com/upload/menu/M_936189001679369468.png" alt="menu">
        </div>
    </div>
    <script type="text/javascript" src="resource/js/main.js"></script>
</body>
</html>