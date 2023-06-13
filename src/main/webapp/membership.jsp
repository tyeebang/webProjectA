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
        
                <div class="benefits">
            <h1>혜택 안내</h1>
            <div class="benefitss">
                <div class="bene_step">
                    <h3>WELCOM</h3>
                    <ul>
                        <li>1만원 쿠폰 (*가입일 익일 발급)</li>
                        <li>본인 파스타 1만원 쿠폰</li>
                        <li>와인 2잔 10,700원 혜택</li>
                        <li>10% 할인 또는 결제 금액의 2% 적립</li>
                    </ul>
                </div>
                <div class="bene_step">
                    <h3>SILVER</h3>
                    <ul>
                        <li><span>WELCOM 혜택 모두 포함</span></li>
                        <li>인프론트 딜리버리 3천원 쿠폰</li>
                    </ul>
                </div>
                <div class="bene_step">
                    <h3>GOLD</h3>
                    <ul>
                        <li><span>SILVER 혜택 모두 포함</span></li>
                        <li>본인 파스타 2만원 쿠폰</li>
                        <li>시즌 메뉴 쿠폰 총 2매 (3월, 6월)</li>
                        <li>딜리버리 오지 치즈 후라이즈(M) 쿠폰</li>
                        <li>음료 쿠폰 총 5매</li>
                        <li>우선 안내권 총 3매 (*지정 특정일 제외)</li>
                        <li>10% 할인 또는 결제 금액의 3% 적립</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="resource/js/main.js"></script>
</body>
</html>