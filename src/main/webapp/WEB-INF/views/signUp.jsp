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
	height: 1300px;
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

#logo {
	width: 240px;
	height: 44px;
	cursor: pointer;
}

#header {
	padding-top: 62px;
	padding-bottom: 20px;
	text-align: center;
}

#wrapper {
	margin-top: 150px;
	position: relative;
	height: 100%;
}

#content {
	position: absolute;
	left: 50%;
	transform: translate(-50%);
	width: 460px;
}

/* 입력폼 */
h3 {
	margin: 19px 0 8px;
	font-size: 14px;
	font-weight: 700;
}

.box {
	display: block;
	width: 100%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px 14px 10px 14px;
	box-sizing: border-box;
	background: #fff;
	position: relative;
}

.int {
	display: block;
	position: relative;
	width: 100%;
	height: 29px;
	border: none;
	background: #fff;
	font-size: 15px;
}

input {
	font-family: Dotum, '돋움', Helvetica, sans-serif;
}

.box.int_id {
	padding-right: 110px;
}

.box.int_pass {
	padding-right: 40px;
}

.box.int_pass_check {
	padding-right: 40px;
}

#bir_wrap {
	display: table;
	width: 100%;
}

#bir_yy {
	display: table-cell;
	width: 147px;
}

#bir_mm {
	display: table-cell;
	width: 147px;
	vertical-align: middle;
}

#bir_dd {
	display: table-cell;
	width: 147px;
}

#bir_mm, #bir_dd {
	padding-left: 10px;
}

select {
	width: 100%;
	height: 29px;
	font-size: 15px;
	background: #fff
		url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100%
		50% no-repeat;
	background-size: 20px 8px;
	-webkit-appearance: none;
	display: inline-block;
	text-align: start;
	border: none;
	cursor: default;
	font-family: Dotum, '돋움', Helvetica, sans-serif;
}

/* 에러메세지 */
.error_next_box {
	margin-top: 9px;
	font-size: 12px;
	color: red;
	display: none;
}

#alertTxt {
	position: absolute;
	top: 19px;
	right: 38px;
	font-size: 12px;
	color: red;
	display: none;
}

/* 버튼 */
.btn_area {
	margin: 30px 0 91px;
}

#btnJoin {
	width: 100%;
	padding: 21px 0 17px;
	border: 0;
	cursor: pointer;
	color: #fff;
	background-color: #4A7C7E;
	font-size: 20px;
	font-weight: 400;
	font-family: Dotum, '돋움', Helvetica, sans-serif;
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
			<div id="wrapper">
				<form action="${pageContext.request.contextPath}/signup" method="post">
					<!-- content-->
					<div id="content">

						<!-- ID -->
						<div>
							<h3 class="join_title">
								<label for="userid">아이디</label>
							</h3>
							<span class="box int_id"> <input type="text" id="userid"
								name="userid" class="int" maxlength="20">
							</span> <span class="error_next_box"></span>
						</div>

						<!-- PW1 -->
						<div>
							<h3 class="join_title">
								<label for="password">비밀번호</label>
							</h3>
							<span class="box int_pass"> <input type="text"
								name="password" id="password" class="int" maxlength="20">
								<span id="alertTxt">사용불가</span>
							</span> <span class="error_next_box"></span>
						</div>

						<!-- PW2 -->
						<div>
							<h3 class="join_title">
								<label for="password2">비밀번호 재확인</label>
							</h3>
							<span class="box int_pass_check"> <input type="text"
								name="password2" id="password2" class="int" maxlength="20">
							</span> <span class="error_next_box"></span>
						</div>

						<!-- NAME -->
						<div>
							<h3 class="join_title">
								<label for="name">이름</label>
							</h3>
							<span class="box int_name"> <input type="text" id="name"
								name="name" class="int" maxlength="20">
							</span> <span class="error_next_box"></span>
						</div>

						<!-- BIRTH -->
						<div>
							<h3 class="join_title">
								<label for="yy">생년월일</label>
							</h3>

							<div id="bir_wrap">
								<!-- BIRTH_YY -->
								<div id="birthYY">
									<span class="box"> <input type="text" id="yy"
										name="birthYY" class="int" maxlength="4" placeholder="년(4자)">
									</span>
								</div>

								<!-- BIRTH_MM -->
								<div id="birthMM">
									<span class="box"> <select id="mm" name="birthMM"
										class="sel">
											<option>월</option>
											<option value="01">1</option>
											<option value="02">2</option>
											<option value="03">3</option>
											<option value="04">4</option>
											<option value="05">5</option>
											<option value="06">6</option>
											<option value="07">7</option>
											<option value="08">8</option>
											<option value="09">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
									</select>
									</span>
								</div>

								<!-- BIRTH_DD -->
								<div id="birthDD">
									<span class="box"> <input type="text" id="dd"
										name="birthDD" class="int" maxlength="2" placeholder="일">
									</span>
								</div>

							</div>
							<span class="error_next_box"></span>
						</div>

						<!-- GENDER -->
						<div>
							<h3 class="join_title">
								<label for="gender">성별</label>
							</h3>
							<span class="box gender_code"> <select id="gender"
								name="gender" class="sel">
									<option>성별</option>
									<option value="M">남자</option>
									<option value="F">여자</option>
							</select>
							</span> <span class="error_next_box">필수 정보입니다.</span>
						</div>

						<!-- EMAIL -->
						<div>
							<h3 class="join_title">
								<label for="email">이메일</label>
							</h3>
							<span class="box int_email"> <input type="text" id="email"
								name="email" class="int" maxlength="100" placeholder="선택입력">
							</span> <span class="error_next_box">이메일 형식을 다시 확인해주세요.</span>
						</div>

						<!-- MOBILE -->
						<div>
							<h3 class="join_title">
								<label for="phone">휴대전화</label>
							</h3>
							<span class="box int_mobile"> <input type="tel"
								id="mobile" name="phone" class="int" maxlength="16"
								placeholder="하이픈 없이 입력해주세요">
							</span> <span class="error_next_box"></span>
						</div>

						<div>
							<h3>
								<label>주소</label>
							</h3>
							<span> <input type="text" id="address1" name="address1"
								class="box" readonly />
							</span>
						</div>

						<div>
							<h3>
								<label>상세 주소</label>
							</h3>
							<span> <input type="text" name="address2" class="box" />
							</span>
						</div>




						<!-- JOIN BTN-->
						<div class="btn_area">
							<button type="submit" id="btnJoin">
								<span>가입하기</span>
							</button>
						</div>
					</div>
					<!-- content-->
				</form>
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
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		window.onload = function() {
			document
					.getElementById("address1")
					.addEventListener(
							"click",
							function() { //주소입력칸을 클릭하면
								//카카오 지도 발생
								new daum.Postcode(
										{
											oncomplete : function(data) { //선택시 입력값 세팅
												document
														.getElementById("address1").value = data.address; // 주소 넣기
												document.querySelector(
														"input[name=address2]")
														.focus(); //상세입력 포커싱
											}
										}).open();
							});
		}

		var idPattern = /[a-zA-Z0-9_-]{5,20}/;
		var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
		var namePattern = /[a-zA-Z가-힣]/;
		var yearPattern = /[0-9]{4}/;
		var datePattern = /\d{1,2}/;
		var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;
		var isPhoneNum = /([01]{2,})([01679]{1,})([0-9]{3,4})([0-9]{4})/;

		function checkId() {
			var idPattern = /[a-zA-Z0-9_-]{5,20}/;
			if (id.value === "") {
				error[0].innerHTML = "필수 정보입니다.";
				error[0].style.display = "block";
			} else if (!idPattern.test(id.value)) {
				error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
				error[0].style.display = "block";
			} else {
				error[0].innerHTML = "멋진 아이디입니다.!";
				error[0].style.color = "#08A600";
				error[0].style.display = "block";
			}
		}

		function checkPw() {
			var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
			if (pw1.value === "") {
				error[1].innerHTML = "필수 정보입니다.";
				pwMsg.style.display = "block";
				pwMsgArea.style.paddingRight = "40px";
				error[1].style.display = "block";
			} else if (!pwPattern.test(pw1.value)) {
				error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
				pwMsg.innerHTML = "사용불가";
				pwMsgArea.style.paddingRight = "93px";
				error[1].style.display = "block";
				pwMsg.style.color = "red";
				pwMsg.style.display = "block";
			} else {
				error[1].style.display = "none";
				pwMsg.innerHTML = "안전";
				pwMsgArea.style.paddingRight = "93px";
				pwMsg.style.color = "#03c75a";
				pwMsg.style.display = "block";
			}
		}

		function comparePw() {
			if (pw2.value === pw1.value) {
				error[2].style.display = "none";
			} else if (pw2.value !== pw1.value) {
				error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
				error[2].style.display = "block";
			}

			if (pw2.value === "") {
				error[2].innerHTML = "필수 정보입니다.";
				error[2].style.display = "block";
			}
		}

		function checkName() {
			var namePattern = /[a-zA-Z가-힣]/;
			if (userName.value === "") {
				error[3].innerHTML = "필수 정보입니다.";
				error[3].style.display = "block";
			} else if (!namePattern.test(userName.value)
					|| userName.value.indexOf(" ") > -1) {
				error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
				error[3].style.display = "block";
			} else {
				error[3].style.display = "none";
			}
		}

		function isBirthCompleted() {
			var yearPattern = /[0-9]{4}/;

			if (!yearPattern.test(yy.value)) {
				error[4].innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
				error[4].style.display = "block";
			} else {
				isMonthSelected();
			}

			function isMonthSelected() {
				if (mm.value === "월") {
					error[4].innerHTML = "태어난 월을 선택하세요.";
				} else {
					isDateCompleted();
				}
			}

			function isDateCompleted() {
				if (dd.value === "") {
					error[4].innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
				} else {
					isBirthRight();
				}
			}
		}

		function isBirthRight() {
			var datePattern = /\d{1,2}/;
			if (!datePattern.test(dd.value) || Number(dd.value) < 1
					|| Number(dd.value) > 31) {
				error[4].innerHTML = "생년월일을 다시 확인해주세요.";
			} else {
				checkAge();
			}
		}

		function checkAge() {
			if (Number(yy.value) < 1920) {
				error[4].innerHTML = "올바른 값을 입력해주세요";
			} else if (Number(yy.value) > 2022) {
				error[4].innerHTML = "올바른 값을 입력해주세요";
			} else if (Number(yy.value) > 2005) {
				error[4].innerHTML = "만 14세 미만의 어린이는 보호자 동의가 필요합니다.";
			} else {
				error[4].style.display = "none";
			}
		}

		function isEmailCorrect() {
			var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

			if (email.value === "") {
				error[6].style.display = "none";
			} else if (!emailPattern.test(email.value)) {
				error[6].style.display = "block";
			} else {
				error[6].style.display = "none";
			}

		}

		function checkPhoneNum() {
			var isPhoneNum = /([01]{2,})([01679]{1,})([0-9]{3,4})([0-9]{4})/;

			if (mobile.value === "") {
				error[7].innerHTML = "필수 정보입니다.";
				error[7].style.display = "block";
			} else if (!isPhoneNum.test(mobile.value)) {
				error[7].innerHTML = "형식에 맞지 않는 번호입니다.";
				error[7].style.display = "block";
			} else {
				error[7].style.display = "none";
			}
		}
	</script>
</body>
</html>