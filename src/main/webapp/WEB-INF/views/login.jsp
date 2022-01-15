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
	background-color: #f5f5f5;
}

main {
	width: 100%;
	height: 800px;
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

.loginForm {
  position:absolute;
  width:300px;
  height:400px;
  padding: 30px, 20px;
  background-color:#FFFFFF;
  text-align:center;
  top:50%;
  left:50%;
  transform: translate(-50%,-50%);
  border-radius: 15px;
}

.loginForm h2{
  text-align: center;
  margin: 30px;
}

.idForm{
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}

.passForm{
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}

.id {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.pw {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.btn {
  position:relative;
  left:40%;
  transform: translateX(-50%);
  margin-bottom: 40px;
  width:80%;
  height:40px;
  background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec);
  background-position: left;
  background-size: 200%;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  transition: 0.4s;
  display:inline;
}

.btn:hover {
  background-position: right;
}

.bottomText {
  text-align: center;
}
</style>
</head>
<body>
	<div id="container">
		<header>
			<section id="top-area">
				<section id="top-menu">
					<div>
						<a href="#" class="h-open-btn"><i class="fas fa-bars"></i></a>
					</div>
					<div>
						<a href="${pageContext.request.contextPath}/home"><h1>BalanceDiary</h1></a>
					</div>
					<div class="top-side">
						<div>
							<a href="${pageContext.request.contextPath}/member/my-diary">My Diary</a>
						</div>
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
							</ul></li>
						<li><a href="#">식단 가이드 <span>▼</span></a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/lean-mass-up">다이어트 + 근육 증가</a></li>
								<li><a href="${pageContext.request.contextPath}/diet">단순 체중 감량</a></li>
								<li><a href="${pageContext.request.contextPath}/bulk-up">체중 + 근육 증량</a></li>
							</ul></li>
						<li><a href="#">Information <span>▼</span></a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/q&a">자주 묻는 질문 Q&A</a></li>
								<li><a href="${pageContext.request.contextPath}/recommend">BalanceDiary 추천 레서피</a></li>
							</ul></li>
						<li><a href="${pageContext.request.contextPath}/diary-main">우리들의 Diary</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
				</nav>
			</section>
			<div class="hamburger-container">
				<nav>
					<div class="hamburger_menu">
						<a href="#" class="h-close-btn"><i class="far fa-times-circle"></i></a>
						<div class="logo">
							<a href="#">BalanceDiary</a>
						</div>
						<ul>
							<li class="menu"><a class="main" href="#">회사 소개</a>
								<ul class="sub">
									<li><a href="#">구상 계기</a></li>
									<li><a href="#">발전 계획</a></li>
								</ul></li>
							<li class="menu"><a class="main" href="#">식단가이드</a>
								<ul class="sub">
									<li><a href="${pageContext.request.contextPath}/lean-mass-up">다이어트 + 근육 증가</a></li>
									<li><a href="${pageContext.request.contextPath}/diet">단순 체중 감량</a></li>
									<li><a href="${pageContext.request.contextPath}/bulk-up">체중 + 근육 증량</a></li>
								</ul></li>
							<li class="menu"><a class="main" href="#">Information</a>
								<ul class="sub">
									<li><a href="${pageContext.request.contextPath}/q&a">자주 묻는 질문 Q&A</a></li>
									<li><a href="${pageContext.request.contextPath}/recommend">BalanceDiary 추천 레서피</a></li>
								</ul></li>
							<li><a href="${pageContext.request.contextPath}/diary-main">우리들의 Diary</a></li>
							<li><a href="#">고객센터</a></li>
						</ul>
					</div>
				</nav>
				<div class="overlay"></div>
			</div>
		</header>
		<main>
			<form action="${pageContext.request.contextPath}/login" method="post" class="loginForm">
				<h2>Login</h2>
				<div class="idForm">
					<input type="text" class="id" placeholder="ID" name="userid">
				</div>
				<div class="passForm">
					<input type="password" class="pw" placeholder="PW" name="password">
				</div>
				<button type="submit" class="btn" id="login-btn">LOG IN
				</button>
				<div class="bottomText">
					Don't you have ID? <a href="${pageContext.request.contextPath}/isSignup">sign up</a>
				</div>
			</form>
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

	<script>
     </script>
</body>
</html>