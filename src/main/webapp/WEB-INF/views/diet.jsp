<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!-- https://fontawesome.com/start -->
<script src="https://kit.fontawesome.com/f1def33959.js"
	crossorigin="anonymous"></script>
<!-- default css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/format.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/diet/diet.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/header.js"></script>

<style>

* {
	box-sizing: border-box;
}

body {
	text-align: center;
	overflow-x: hidden;
	margin: 0;
	color: #333;
	font-size: 18px;
	line-height: 1.6em;
}

a {
	-webkit-transition: all 0.1s linear;
	transition: all 0.1s linear;
	text-decoration: none;
	color: #333;
}

a:hover {
	-webkit-transform: scale(1.05);
	-moz-transform: scale(1.05);
	-ms-transform: scale(1.05);
	-o-transform: scale(1.05);
	transform: scale(1.05);
}

#container {
	width: 100%;
	height: 100%;
}

p.blank {
	height: 200px;
}
</style>
</head>
<body>
	<div id="container">
		<header>
                <section id="top-area">
                    <section id="top-menu">   
                        <div><a href="#" class="h-open-btn"><i class="fas fa-bars"></i></a></div>
                    <div><a href="${pageContext.request.contextPath}/home"><h1>BalanceDiary</h1></a></div>
                    <div class="top-side">
                        <div><a href="${pageContext.request.contextPath}/member/my-diary">My Diary</a></div>
                        <c:if test="${empty sessionScope.account.userid}">
                        <div><a href="${pageContext.request.contextPath}/isLogin">로그인</a></div>
                        </c:if>
                        <c:if test="${!empty sessionScope.account.userid}">
                        <div><a href="${pageContext.request.contextPath}/logout">로그아웃</a></div>
                        </c:if>
                    </div>
                </section>
                <nav id="top-nav">
                    <ul id="nav-menu">
                        <li><a href="#">회사소개 <span>▼</span></a>
                            <ul>
                                <li><a href="#">구상 계기</a></li>
                                <li><a href="#">발전 계획</a></li>
                            </ul>
                        </li>
                        <li><a href="#">식단 가이드 <span>▼</span></a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/lean-mass-up">다이어트 + 근육 증가</a></li>
                                <li><a href="${pageContext.request.contextPath}/diet">단순 체중 감량</a></li>
                                <li><a href="${pageContext.request.contextPath}/bulk-up">체중 + 근육 증량</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Information <span>▼</span></a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/q&a">자주 묻는 질문 Q&A</a></li>
                                <li><a href="${pageContext.request.contextPath}/recommend">BalanceDiary 추천 레서피</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/diary-main">우리들의 Diary</a></li>
                        <li><a href="#">고객센터</a></li>
                    </ul>
                </nav>
            </section>
            <div class="hamburger-container">
                <nav>
                    <div class="hamburger_menu">
                        <a href="#" class="h-close-btn"><i class="far fa-times-circle"></i></a>
                        <div class="logo"><a href="#">BalanceDiary</a></div>
                            <ul>
                                <li class="menu">
                                    <a class="main" href="#">회사 소개</a>
                                    <ul class="sub">
                                        <li><a href="#">구상 계기</a></li>
                                        <li><a href="#">발전 계획</a></li>
                                    </ul>
                                </li>
                                <li class="menu">
                                    <a class="main" href="#">식단가이드</a>
                                    <ul class="sub">
                                        <li><a href="${pageContext.request.contextPath}/lean-mass-up">다이어트 + 근육 증가</a></li>
                                        <li><a href="${pageContext.request.contextPath}/diet">단순 체중 감량</a></li>
                                        <li><a href="${pageContext.request.contextPath}/bulk-up">체중 + 근육 증량</a></li>
                                    </ul>
                                </li>
                                <li class="menu">
                                    <a class="main" href="#">Information</a>
                                    <ul class="sub">
                                        <li><a href="${pageContext.request.contextPath}/q&a">자주 묻는 질문 Q&A</a></li>
                                        <li><a href="${pageContext.request.contextPath}/recommend">BalanceDiary 추천 레서피</a></li>
                                    </ul>
                                </li>
                                <li><a href="${pageContext.request.contextPath}/diary-main">우리들의 Diary</a></li>
                                <li><a href="#">고객센터</a></li>
                            </ul>
                        </div>
                    </nav>
                    <div class="overlay"></div>
                </div>
		</header>
		<main>
			  <section class="diet-wrap">
                <h1>체중 감량<br>
                    (일반 다이어트 식단)</h1>
                <div>
                    <img src="${pageContext.request.contextPath}/resources/images/diet/diet-graph1.png" alt="다이어트 그래프1" width="60%">
                </div>
                <p class="blank"></p>
                <section class="diet-content">
                    <h1>날씬한 몸매를 원하시는 분들을 위한 다이어트 식단</h1>
                       <h2>1. 총 칼로리 섭취 줄이고 지방(포화지방)  제한</h2>
                       <img src="https://t2.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/4aFk/image/aBP8qcNrtDffLtYQtBJJEcolQkU.jpg" width="60%" alt="벌크업 식단 이해">
                       <p>  기본적으로 체중 감량 효과를 보기 위해서는 식이 조절을 어떻게 해야 할까?  <br>
                        서울대 의대 국민건강지식센터에 따르면, 두 가지 방법이 있다. 먼저, ‘저칼로리식’이다. 여성은 하루에 800~1200칼로리, 남성은 1200~1400칼로리를 섭취하는 것이다. <br>
                        이를 위해서는 칼로리 밀도가 낮은 음식(고구마, 당근, 토마토 등의 채소)을 위주로 식단을 짜면 된다. ‘저지방식’도 좋다. 지방으로 섭취하는 칼로리를 15~20% 이하로 제한하는 것이다.
                        반찬이나 간식을 불포화지방이 많은 식품(올리브, 호두, 고등어, 아몬드 등)으로 구성하면 되는데, 이는 체중 감량 효과뿐 아니라 총콜레스테롤과 저밀도지단백(LDL)을 낮추고 인슐린 민감도를
                        개선해 염증도 억제해준다.
                        </p>    
                    <article>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>2. 평소 식사의 1/2 또는 2/3 수준으로 먹는다</h2>
                        <img src="http://cdn.kpinews.co.kr/news/photo/201801/64142_36664_5253.jpg" width="60%" alt="여러차례 나누어 먹기">
                        <p>칼로리 첩취를 줄여야 한다고하여 무조건 단식을 감행하거나 적게 먹으면 빨리 배가 꺼져서 배고픔에 제대로 활동할 수가  <br>
                            없는 문제가 있고 이는 오히려 건강을 해치고 감량에 성공한다고해도 금방 요요를 부른다. <br>
                            그렇다고 해서 복잡하게 열량을 계산하고 먹자니 머리가 아프다. 쉽고 간단한 방법은 매 끼니때 식사량을 1/2 또는 2/3  수준으로 줄이는 것이다. 
                            밥은 평소의 1/2 또는 2/3만 먹고, 반찬, 국도 그렇게 줄여서 먹게 되면 총 섭취하는 열량은 자연스럽게 줄어들게 된다.
                            또한 갑자기 양을 줄이려고하면 실패할 확률이 크니, 여유롭게 계획을 두고 조금씩 줄여가는게 좋다.</p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>3. 3. 식이섬유 및 아채를 많이 섭취하자.</h2>
                        <img src="https://t1.daumcdn.net/cfile/tistory/24136B50581965BB1D"  alt="충분한 식이섬유 섭취" width="50%">
                        <p> 과일과 채소는 섬유질과 수분 함량이 높아 소량의 칼로리만 섭취하면서 포만감을 오래 유지하는데 효과적이다. <br>
                            이 식품들은 건강하고 균형잡힌 식단 유지에 고움이 되는 각종 영양분들까지 함유하고 있다. <br>
                            매주 번갈아가며 다양한 종류의 과일과 채소를 섭취하도록하며, 이를 통해 우리는 필요한 필수 영양소 및 각종 비타민들을 대부분 섭취할 수 있다.</p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>4. 물을 많이 섭취하자. </h2>
                        <img src="http://www.samsunghospital.com/upload/health/1438654656964_520638.jpg" alt="물 섭취량을 늘리기" width="40%">
                        <p>물은 신장이 독소와 노폐물을 걸러 내도록 돕고 장기는 필수 영양소와 전해질을 보유합니다.<br> 
                            또한 지방을 태우려면 물이 필요합니다. 물이 없으면 신체는 저장된 지방이나 탄수화물을 적절히 대사 할 수 없습니다.<br>
                            지방을 대사하는 과정을 지방 분해라고합니다. 이 과정의 첫 번째 단계는 물 분자가 트리글리세리드 (지방)와 상호 작용하여 글리세롤과 지방산을 생성 할 때 발생하는 가수 분해입니다.<br>
                            음식과 음료의 지방은 물론 저장된 지방을 태우려면 충분한 물을 마시는 것이 필수적입니다.<br>
                            물 섭취량이 증가하면 동물 연구에서 지방 분해가 증가하고 지방이 감소하는 것으로 나타났습니다.</p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>5. ‘요요’ 막으려면 운동을 꼭 병행해야 한다.
                        </h2>
                        <img src="https://img.yna.co.kr/etc/inner/KR/2018/09/27/AKR20180927105400797_07_i_P4.jpg" alt="요요현상 방지" width="50%">
                        <p>몸건강을 유지시키면서 보다 효과좋은 다이어트를 성공하기 위해선 운동도 소홀히 해선 안 된다.<br> 
                            과체중이거나 비만인 사람은 살을 뺀 뒤 유지하는 게 어렵다. <br>
                            요요현상을 막으려면 운동을 병행하는 게 효과적이다. 중강도 이상의 활동을 하루 최소 30분씩 1주일에 5~7일 시행하고,<br>
                            이를 점차 늘려 주당 250분 이상의 신체 활동을 해야 한다. <br>
                            운동은 한 번에 오래 하는 것보다 여러 번으로 나눠(최소 10분 이상) 실시하는 게 좋고, 매번 다른 동작·운동(기구 운동, 체중 부하 운동 등)을 하면 된다.</p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>일반 다이어트(체중 감량) 식단 예시</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/diet/diet-recipe.png" alt="일반 다이어트 식단 예시" width="50%" >
                        <p class="blank"></p>
                        <h2><a href="${pageContext.request.contextPath}/diary-main" class="move-board">위를 참고해서 이제 나의 식단 공유 및 <br>
                            회원님들 식단 보러가기 ></a></h2>
                        
                    </article>
                </section>
                <p class="blank"></p>
           </section>
        </main>
        <div id="banner">
            <a href=""><i class="fas fa-arrow-up"></i></a>
         </div>
			
		</main>
		<footer>
			<article class="footer-logo">
				<a href="${pageContext.request.contextPath}/home">BalanceDiary</a>
			</article>
			<section class="footer-content-box">
				<nav>
					<ul class="footer-nav">
						<li><a href="#">회사소개 ㅣ</a></li>
						<li><a href="#">제휴문의 ㅣ</a></li>
						<li><a href="#">광고문의 ㅣ</a></li>
						<li><a href="#">이용약관 ㅣ</a></li>
						<li><a href="#">개인정보처리방침 ㅣ</a></li>
						<li><a href="#">공지사항</a></li>
					</ul>
				</nav>
				<div class="footer-infor">
					<address>
						<h6>(주)발란스다이어리</h6>
						<p>등록번호: 경기 이 00000 | 등록연월일: 2011. 11. 11</p>
						<p>발행인: 이영주 | 편집인: 이영주 | 발행소: 서울 금천구 가산디지털2로 115 대륭테크노타운 3차
							1109호</p>
						<p>발행연월일: 2011 11. 11 | 전화번호: 02 - 0000 - 0000</p>
					</address>
					<article>
						<h6>고객상담센터 080-777-7777</h6>
						<p>E-mail: BalanceDiary@naver.com</p>
						<p>평일 : 09:00 - 18:00</p>
					</article>
				</div>
				<div class="footer-aBox">
					<a href="https://www.youtube.com"><i class="fab fa-youtube"></i></a>
					<a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a>
					<a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a>
					<a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a>
					<a href="https://www.ePrivacy.or.kr"><img
						src="${pageContext.request.contextPath}/resources/images/ePrivacy.png" alt="ePrivacy"></a> <a
						href="https://www.kns.or.kr"><img src="${pageContext.request.contextPath}/resources/images/kns.png"
						alt="kns"></a> <a href="https://www.mfds.go.kr"><img
						src="${pageContext.request.contextPath}/resources/images/foodsafe.png" alt="foodsafe"></a> <a
						href="https://www.mohw.go.kr"><img src="${pageContext.request.contextPath}/resources/images/bogun.png"
						alt="bogun"></a>
				</div>
				<div class="copyright">
					<h5>Copyright ⓒ balanceDiary co. Ltd All Rights Reserved.</h5>
				</div>
			</section>
		</footer>
	</div>
</body>
</html>