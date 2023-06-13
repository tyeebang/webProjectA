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
    <div class="all_menu">
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
        
        <div class="intro">
            <img src="https://static.wixstatic.com/media/e1c78c_a5a164acd00a4ae7940be550e4915303.jpg/v1/fill/w_1066,h_682,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/e1c78c_a5a164acd00a4ae7940be550e4915303.jpg" alt="chef">
            <div class="intro_txt">
                <h1>Meet The Chef</h1>
                <div>
                    <p>It is a long established fact that a reader will be distracted by the</p>
                    <p>readable content of a page when looking at its layout. The point</p>
                    <p>of using Lorem Ipsum is that it has a more-or-less normal</p>
                    <p>distribution of letters, as opposed to using 'Content here, content</p>
                    <p>here', making it look like readable English. Many desktop</p>
                    <p>publishing packages and web page editors now use Lorem Ipsum</p>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="resource/js/main.js"></script>
</body>
</html>