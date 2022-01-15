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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mydiary/mydiary.css">
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
			<div class="my-calendar clearfix">
				<div class="calendar-box">
					<div class="ctr-box clearfix">
						<button type="button" title="prev" class="btn-cal prev">
						</button>
						<span class="cal-year"></span> <span class="cal-month"></span> <span
							class="cal-date"></span> <span class="cal-day"></span>
						<button type="button" title="next" class="btn-cal next">
						</button>
					</div>
					<table class="cal-table">
						<thead>
							<tr>
								<th>일</th>
								<th>월</th>
								<th>화</th>
								<th>수</th>
								<th>목</th>
								<th>금</th>
								<th>토</th>
							</tr>
						</thead>
						<tbody class="cal-body"></tbody>
					</table>
				</div>
			</div>

			<article class="today-diary">
				<h2>
					<span class="cal-year"></span> <span class="cal-month"></span> <span
						class="cal-date"></span> <span class="cal-day"></span>
				</h2>
				<h4>선택하면 누른 해당 끼니까지의 그래프를 확인 할 수 있어요.</h4>
				<label for="morning-btn"><input type="checkbox"
					name="morning-btn" id="mornin-btn">아침</label> <label
					for="lunch-btn"><input type="checkbox" name="lunch-btn"
					id="lunch-btn">점심</label> <label for="dinner-btn"><input
					type="checkbox" name="dinner-btn" id="dinner-btn">저녁</label> <label
					for="snack-btn"><input type="checkbox" name="snack-btn"
					id="snack-btn">간식</label> <label for="midnight-btn"><input
					type="checkbox" name="midnight-btn" id="midnight-btn">야식</label>
				<article class="today-diary-content">
					<article class="today-diary-grape">
						<div>원그래프</div>
						<div>
							<ul>
								<li>총 섭취 열량</li>
								<li>탄수화물</li>
								<li>단백질</li>
								<li>지방</li>
								<li>나트륨</li>
							</ul>
						</div>
					</article>
					<div>
						<ul>
							<li>1. 돼지갈비찜 0.6인분(521 kcal</li>
							<li>2. 공기밥 0.6인분(293 kcal</li>
							<li>3. 스니커즈 아몬드 0.6인분(230 kcal</li>
							<li>4 .감자칩 0.5봉지(142 kcal</li>
							<li>5. 김치 1 앞 접시 0.6인분(15 kcal</li>
						</ul>
					</div>
				</article>
			</article>

			<article class="thismonth-diary">
				<h2>
					<span class="cal-year"></span><span class="cal-month"></span> 나의 평균
					영양 섭취
				</h2>
				<article class="thismonth-diary-graph">
					<div>원그래프</div>
					<div>
						<ul>
							<li>총 섭취 열량</li>
							<li>탄수화물</li>
							<li>단백질</li>
							<li>지방</li>
							<li>나트륨</li>
						</ul>
					</div>
				</article>
			</article>
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

	<script type="text/javascript">

	 // calandar
	const init = {
        monList: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayList: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
        today: new Date(),
        monForChange: new Date().getMonth(),
        activeDate: new Date(),
        getFirstDay: (yy, mm) => new Date(yy, mm, 1),
        getLastDay: (yy, mm) => new Date(yy, mm + 1, 0),
        nextMonth: function () {
            let d = new Date();
            d.setDate(1);
            d.setMonth(++this.monForChange);
            this.activeDate = d;
            return d;
        },
        prevMonth: function () {
            let d = new Date();
            d.setDate(1);
            d.setMonth(--this.monForChange);
            this.activeDate = d;
            return d;
        },
        addZero: (num) => (num < 10) ? '0' + num : num,
        activeDTag: null,
        getIndex: function (node) {
            let index = 0;
            while (node = node.previousElementSibling) {
            index++;
            }
            return index;
        }
        };

        const $calBody = document.querySelector('.cal-body');
        const $btnNext = document.querySelector('.btn-cal.next');
        const $btnPrev = document.querySelector('.btn-cal.prev');

        /**
         * @param {number} date
         * @param {number} dayIn
        */
        function loadDate (date, dayIn) {
        let calDates = document.querySelectorAll('.cal-date');
        let calDays = document.querySelectorAll('.cal-day');
        calDates.forEach(calDate => {
            calDate.textContent = date+"일 ";
        });
        calDays.forEach(calDay => {
            calDay.textContent = init.dayList[dayIn];
        });

        };

        /**
         * @param {date} fullDate
         */
        function loadYYMM (fullDate) {
        let yy = fullDate.getFullYear();
        let mm = fullDate.getMonth();
        let firstDay = init.getFirstDay(yy, mm);
        let lastDay = init.getLastDay(yy, mm);
        let markToday;  // for marking today date
        
        if (mm === init.today.getMonth() && yy === init.today.getFullYear()) {
            markToday = init.today.getDate();
        };

        let calYears = document.querySelectorAll('.cal-year');
        calYears.forEach(year => {
            year.textContent = yy+"년 ";
        });
        let calMonths = document.querySelectorAll('.cal-month');
        calMonths.forEach(month => {
            month.textContent = init.monList[mm];
        });

        let trtd = '';
        let startCount;
        let countDay = 0;
        for (let i = 0; i < 6; i++) {
            trtd += '<tr>';
            for (let j = 0; j < 7; j++) {
            if (i === 0 && !startCount && j === firstDay.getDay()) {
                startCount = 1;
            }
            if (!startCount) {
                trtd += '<td>'
            } else {
                let fullDate = yy + '.' + init.addZero(mm + 1) + '.' + init.addZero(countDay + 1);
                trtd += '<td class="day';
                trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
                trtd += "data-date="+(countDay + 1)+" data-fdate="+fullDate+">";
            }
            trtd += (startCount) ? ++countDay : '';
            // ************ 데이터 삽입 **************
            trtd += '<div>탄</div>';
            trtd += '<div>단</div>';
            trtd += '<div>지</div>';
            if (countDay === lastDay.getDate()) { 
                startCount = 0; 
            }
            trtd += '</td>';
            }
            trtd += '</tr>';
        }
        $calBody.innerHTML = trtd;
        };

        /**
         * @param {string} val
         */
        function createNewList (val) {
        let id = new Date().getTime() + '';
        let yy = init.activeDate.getFullYear();
        let mm = init.activeDate.getMonth() + 1;
        let dd = init.activeDate.getDate();
        const $target = $calBody.querySelector(`.day[data-date="${dd}"]`);

        let date = yy + '.' + init.addZero(mm) + '.' + init.addZero(dd);

        let eventData = {};
        eventData['date'] = date;
        eventData['memo'] = val;
        eventData['complete'] = false;
        eventData['id'] = id;
        // init.event.push(eventData);
        // $todoList.appendChild(createLi(id, val, date));
        };

        loadYYMM(init.today);
        loadDate(init.today.getDate(), init.today.getDay());

        $btnNext.addEventListener('click', () => loadYYMM(init.nextMonth()));
        $btnPrev.addEventListener('click', () => loadYYMM(init.prevMonth()));

        $calBody.addEventListener('click', (e) => {
            if (e.target.classList.contains('day')) {
                if (init.activeDTag) {
                init.activeDTag.classList.remove('day-active');
                }

                let day = Number(e.target.dataset.date);
                loadDate(day, e.target.cellIndex);
                e.target.classList.add('day-active');
                init.activeDTag = e.target;
                init.activeDate.setDate(day);
            };
        });
    </script>
</body>
</html>