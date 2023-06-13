<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>인프론트 로그인</title>
    <link rel="stylesheet" href="resource/css/style.css">
</head>
<body>
    <div class="all_menu">
        <header>
            <ul class="global_menu">
                <a href="index.jsp"><img src="resource/img/logo.png" alt="logo"></a>
                <div class="menu">
                    <a href="./brand.jsp">BRAND</a>
                    <a href="./menu.jsp">MENU</a>
                    <a href="./membership.jsp">MEMBERSHIP</a>
                </div>
                <div class="sign">
                    <a href="#">클레임</a>
                    <a href="#">회원가입</a>
                </div>
            </ul>
			</div>
        </header>
        
   	    <div class="login_section">
			<%
				String id = (String)session.getAttribute("logOK");
			
				if(id != null) {
			%>
					<p><%= id %>님이 로그인 상태입니다.</p>
					<a href="logout.jsp">로그아웃</a>
			<%
				} else {
			%>
					<h1>인프론트 로그인</h1>
					<p>로그인을 하시면 인프론트의 다양한 서비스를 이용하실 수 있습니다.</p>
					<hr class="log_hr">
					<form action="login.jsp" method="post" class="log_form">
						<div class="log_div">
							<p><input type="text" name="id" placeholder="아이디 입력"></p>
							<p><input type="password" name="pw" placeholder="비밀번호 입력"></p>
						</div>
						<input type="submit" value="로그인">
					</form>
			<%
				}
			%>
  		</div>
    </div>
    <script type="text/javascript" src="resource/js/main.js"></script>
</body>
</html>