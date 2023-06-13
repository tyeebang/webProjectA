<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>인프론트 파스타 하우스(InFront PastaHouse)</title>
    <link rel="stylesheet" href="./resource/css/style.css">
</head>
<body>
    <div class="all">
        <header>
            <ul class="global_menu">
                <a href="#"><img src="./resource/img/logo.png" alt="logo"></a>
                <div class="menu">
                    <a href="./brand.jsp">BRAND</a>
                    <a href="./menu.jsp">MENU</a>
                    <a href="./membership.jsp">MEMBERSHIP</a>
                    <a href="./store.jsp">STORE</a>
                </div>
                <div class="sign">
                    <a href="./clame.jsp">클레임</a>
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
                    <a href="./sign.jsp">회원가입</a>
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

        <section>
            <div class="main_slide">
                <input type="radio" name="slide" id="slideA" checked>
                <input type="radio" name="slide" id="slideB">
                <input type="radio" name="slide" id="slideC">
                <ul class="slide_list">
                    <li class="slide_item">
                        <div>
                            <label for="slideC" class="left"></label>
                            <label for="slideB" class="right"></label>
                            <a href="#"><img src="./resource/img/slide_pasta.png" alt="slide_pasta" class="slide_img" id="slide_a"></a>
                            <img src="./resource/img/logo_RB.png" alt="logo_RB" class="imgRb">
                        </div>
                    </li>
                    <li class="slide_item">
                        <div>
                            <label for="slideA" class="left"></label>
                            <label for="slideC" class="right"></label>
                            <a href="#"><img src="./resource/img/slide_ingredient.png" alt="slide_ingredient" class="slide_img"></a>
                            <img src="./resource/img/fresh.png" alt="logo_RB" class="fresh">
                        </div>
                    </li>
                    <li class="slide_item">
                        <div>
                            <label for="slideB" class="left"></label>
                            <label for="slideA" class="right"></label>
                            <a href="./store.jsp"><img src="./resource/img/slide_delivery.png" alt="slide_delivery" class="slide_img"></a>
                            <img src="./resource/img/lunchBox.png" alt="logo_RB" class="box">
                        </div>
                    </li>
                </ul>
            </div>

            <div class="welcome">
                <h1>WELCOME</h1>
                <p>
                    인프론트는 늘 질 좋은 파스타를 제공하고자 합니다<br>
                    1999년에 파스타를 전문으로 하는 레스토랑을 성남시에 오픈 했습니다<br>
                    늘 초심을 잃지 않으며 요리하겠습니다<br>
                </p>
            </div>

            <div class="pasta">
                <img src="./resource/img/fork.png" alt="fork" class="fork">
                <h1 class="s1">PICK <br> YOUR <br> <span>favorite</span></h1>
                <div class="pasta_menu_fir">
                    <h2 class="s2">Aglio E Olio</h2>
                    <a href="./menu.jsp"><img src="./resource/img/Aglio e olio.png" alt="aglio"></a>
                    <p class="s3">
                        통칭 알리오 올리오는 이탈리아 나폴리의 요리입니다. 오일 소스 파스타의 일종이며, <br>
                        재료에서 알 수 있듯 '알리오'(마늘)과 올리오(올리브유) 2가지가 핵심 재료입니다 <br>
                        기본적으로 모든 오일 기반 파스타의 베이스가 되는 요리입니다
                    </p>
                    <a href="./menu.jsp"><button>자세히보기</button></a>
                </div>
                <div class="pasta_menu_sec">
                    <h2 class="s4">Su Filindeu</h2>
                    <a href="./menu.jsp"><img src="./resource/img/filindeu.png" alt="filindeu"></a>
                    <p class="s5">
                        통칭 필린데우는 이탈리아의, 아니 전 세계에서 가장 조리하기 힘든 파스타입니다 <br>
                        만드는 법 부터 어려운데다 애초에 필린데우를 만드는 장인이 매우 드무며 가르쳐주는 <br>
                        사람도 적기 때문입니다. 우리 인프론트는 직접 칼리아리까지 가서 장인에게 직접 <br>
                        필린데우의 레시피와 제작법을 공수 받아왔습니다. 직접 환상적인 맛을 느껴보세요
                    </p>
                    <a href="./menu.jsp"><button>자세히보기</button></a>
                </div>
            </div>

            <div class="membership">
                <img src="./resource/img/tomato.png" alt="tomato" class="tomato">
                <div class="member">
                    <div class="mem_txt">
                        <h1>INFRONT MEMBERSHIP</h1>
                        <p>멤버쉽으로 다양한 혜택을 누려보세요</p></div>
                    <div class="benefit">
                        <a href="./membership.jsp">
                            <div class="elem">
                                <img src="https://www.outback.co.kr/asset/images/content/main_benefit_icon_01.png" alt="member">
                                <h2>MEMBERSHIP</h2>
                                <p>멤버쉽에 가입하고<br>
                                다양한 혜택을 즐기세요</p>
                            </div>
                        </a>
                        <a href="./membership.jsp">
                            <div class="elem">
                                <img src="https://www.outback.co.kr/asset/images/content/main_benefit_icon_02.png" alt="discount">
                                <h2>DISCOUNT</h2>
                                <p>인프론트 할인 혜택의<br>
                                기회를 놓치지 마세요</p>
                            </div>
                        </a>
                        <a href="./membership.jsp">
                            <div class="elem">
                                <img src="https://www.outback.co.kr/asset/images/content/main_benefit_icon_03.png" alt="giftcard">
                                <h2>GIFTICON</h2>
                                <p>당신의 소중한 사람들에게<br>
                                고마운 마음을 선물하세요</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        
        <footer>
            <p>대표이사 : ### | 주소 : 경기도 성남시 분당구 ##로 @@@(##동)</p>
            <p>copyright© 2023. Um. All rights reserved. Human Resources Devlopment Service of Korea.</p>
            <p>홈페이지 관련 문의 : 070-@@@@-@@@@</p>
            <p>상담시간 : 월~금 10:00~17:00(토/일, 공휴일 휴무, 점심시간 12:00~13:30)</p>
            <p>대표번호 : 010-@@@@-@@@@ / 배달 주문번호 : @@@@-@@@@</p>
        </footer>
    </div>
    <script type="text/javascript" src="./resource/js/main.js"></script>
</body>
</html>