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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/diet/bulk-up.css">
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
			  <section class="bulk-up-wrap">
                <h1>체중 증량<br>
                    (벌크업 식단)</h1>
                <div>
                    <img src="resources/images/bulk-up/bulk-up-graph1.png" alt="벌크업 그래프1" width="60%">
                </div>
                <p class="blank"></p>
                <section class="bulk-up-content">
                    <h1>너무 외소한 분들을 위한 체중 증가 식단</h1>

                       <h2>1. 체증증량(벌크업) 식단을 제대로 이해하고 활용하기</h2>
                       <img src="${pageContext.request.contextPath}/resources/images/bulk-up/bulk-up-diet.png" alt="벌크업 식단 이해">
                       <p> 체중증가 식단이라 불리는 벌크업 이란 보디빌딩에서 근육의 양을 더욱 효과적으로 <br>
                        증대시키기 위해 거쳐가는 일련의 과정으로, 높은 강도의 운동을 병행하면서 식사량을 <br>
                        늘려 체내에 양질의 탄수화물과 단백질, 기타 영양소들을 충분히 공급시킴으로써 체중 및 근육량을 지속적으로 상향 상태로 유지하는 것을 의미합니다.</p>
                        <h3>1-1. 유연한 영양소 섭취 가능</h2>
                        <p> 체중 증가 식단 예시의 장점은 모든 음식 및 영양소를 유연하게 <br>
                            활용하여 식단을 계획할수 있다는 장점이 있습니다. 예를 들면 다이어트 식단에서는 탄수화물 및 지방을 조절 해줘야하는 반면<br>
                            체중 증가를 위해서는 충분한 탄수화물과 지방 섭취가 필요하여 식단에 모두 활용할 수 있습니다.</p>
                        <h3>1-2. 하지만 살을 찌워야하니 지방, 탄수화물 아무거나 많이 먹으면된다? 그것은 아닙니다.</h2>
                        <p>벌크업을 하신다고 해서 가리지 않고 마음대로 먹어선 안됩니다. <br>
                        그렇게 하시면 불필요한 지방만 몸에 늘어나 크고 튼튼한 몸을 만드는게 아니라 각종 질병의 취약하며 몸에 건강을 해치는 비만이 될뿐입니다. <br>
                        체중 증가를 위해서는 충분한 탄수화물과 지방 섭취가 필요하여 식단에 모두 활용할 수 있습니다.</p>
                    <article>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>2. 한끼에 많이 먹기보단 여러차례 나누어 먹기</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/bulk-up/bulk-up-meal.jpeg" alt="여러차례 나누어 먹기">
                        <p>벌크업 식단에 앞서 먼저 고려해야 할 점은 한꺼번에 너무 많은 음식을 먹지 않는 것입니다.  <br>
                            우리가 흔히 살을 찌울 때, 한 끼에 몰아서 과식하는 경우가 있는데, 이는 오히려 좋지 않다고 합니다. <br>
                            하루 삼시 세 끼와 간식 등을 섞어 적당한 양의 음식을 꾸준히 먹어주는 것이 남자 벌크업 식단에서 중요하다고 하네요. </p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>3. 충분한 수분 섭취</h2>
                        <img src="https://img1.daumcdn.net/thumb/R720x0/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fjamiet%2Fa58594acb2284c778bf0a0145d4f678f.jpg"  alt="충분한 수분 섭취" width="50%">
                        <p> 하루 4리터이상의 물을 먹어주세요. 운동중에도 계속 물을 먹어주는 것이 <br>
                            운동능력을 향상시켜 결론적으로 근육향상에 도움을 줍니다.<br>
                             몸에 수분이 고갈되고 갈증을 느끼면 운동능력이 저하되기 때문에
                             <br> 
                             체내수분이 충분하도록 계속 물을 먹어주는 것이 효과적입니다.</p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>4. 단백질 섭취량을 늘리기 </h2>
                        <img src="https://t1.daumcdn.net/cfile/tistory/99067D455C11C7C227" alt="단백질 섭취량을 늘리기" width="40%">
                        <p>단백질은 근육의 50%를 차지하는 영양으로서, 근육성장에
                            필요한 영양소이기 때문에 충분히 섭취하는 것이 좋습니다.
                             <br><br>
                            보통 보디빌딩을 목적으로 운동할 경우 체중 1kg당 2g정도의 단백질이면 충분하지만,<br>
                            벌크업(근매스증진)기간중에는 체중 1kg당 3~4g정도의 단백질을 하루에 먹어주는 것이 좋습니다.<br>
                            닭가슴살, 참치, 계란흰자, 생선류, 소고기, 유청단백, 저지방 우유등이 양질의 단백질 식품입니다.<br>
                            음식으로 필요량만큼의 단백질 섭취가 이루어지지 않으면 단백질 보충제를 활용하세요.<br>
                            식단도 중요하지만 건강하게 근육질의 몸으로 몸을 키우기 위해서는 꾸준한 운동이 필수입니다.</p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>체중 증량(벌크업) 식단 예시</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/bulk-up/bulk-up-recipe.png" alt="벌크업 식단 예시" width="50%" >
                        <p class="blank"></p>
                        <h2><a href="${pageContext.request.contextPath}/diary-main" class="move-board">위를 참고해서 이제 나의 식단 공유 및 <br>
                            회원님들 식단 보러가기 ></a></h2>
                        
                    </article>
                </section>
                <p class="blank"></p>
           </section>
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