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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/personalization/personalization.css">
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

.mm-survey-item {
	text-align: left;
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
						<li><a href="diary-main">우리들의 Diary</a></li>
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
			<div class="sur-container">
				<div class="col-sm-12">
					<div class="mm-survey">

						<div class="mm-survey-progress">
							<div class="mm-survey-progress-bar mm-progress"></div>
						</div>

						<div class="mm-survey-results">
							<div class="mm-survey-results-container">
								<h1>참여해주셔서 감사합니다</h1>
								<h2>당신에게는 ㅁㅁㅁ 식단을 추천합니다</h2>
								<a href="">이동하기</a>
								<!-- <h3 class="mm-survey-results-score"></h3> -->
								<!-- <ul class="mm-survey-results-list"></ul> -->
							</div>
							<div class="mm-survey-results-controller">
								<div class="mm-back-btn">
									<button>다시 하기</button>
								</div>
							</div>
						</div>

						<div class="mm-survey-bottom">
							<div class="mm-survey-container">

								<div class="mm-survey-page active" data-page="1">
									<div class="mm-survery-content">
										<div class="mm-survey-question">
											<p>현재 운동을 하고 계시거나 할 계획이 있으십니까?</p>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio01" data-item="1" name="radio1"
												value="red" /> <label for="radio01"><span></span>
											<p>현재 3개월 이상 운동을 하고 있다.</p></label>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio02" data-item="1" name="radio1"
												value="blue" /> <label for="radio02"><span></span>
											<p>아직 운동을 하고 있지 않지만, 곧 시작할 것이다.</p></label>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio03" data-item="1" name="radio1"
												value="green" /> <label for="radio03"><span></span>
											<p>현재는 잠시 건강 혹은 시간적 여유가 나지 않아 할 수 없는 상황이다.</p></label>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio04" data-item="1" name="radio1"
												value="purple" /> <label for="radio04"><span></span>
											<p>운동을 즐기지 않으며, 앞으로도 운동할 계획이 없다.</p></label>
										</div>
									</div>
								</div>
								<div class="mm-survey-page" data-page="2">
									<div class="mm-survery-content">
										<div class="mm-survey-question">
											<p>평소 다이어트(혹은 근육 증량)를 계획하고, 식이조절을 할때 어떻게 끼니를 챙겨먹습니까?</p>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio05" data-item="2" name="radio2"
												value="1" /> <label for="radio05"><span></span>
											<p>1일 1식</p></label>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio06" data-item="2" name="radio2"
												value="2" /> <label for="radio06"><span></span>
											<p>1일 2식</p></label>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio07" data-item="2" name="radio2"
												value="3" /> <label for="radio07"><span></span>
											<p>1일 3식 혹은 그 이상</p></label>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio08" data-item="2" name="radio2"
												value="0" /> <label for="radio08"><span></span>
											<p>불규칙적, 최대한 먹지 않는다.</p></label>
										</div>
									</div>
								</div>
								<div class="mm-survey-page" data-page="3">
									<div class="mm-survery-content">
										<div class="mm-survey-question">
											<p>어떤 체형을 원하십니까?</p>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio09" data-item="3" name="radio3"
												value="1" /> <label for="radio09"><span></span>
											<p>평소 체중이 많이 나간다 생각하여, 단순히 살을 효과적으로 빼고 싶습니다.</p></label>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio10" data-item="3" name="radio3"
												value="2" /> <label for="radio10"><span></span>
											<p>체중 감량도 감량이지만, 운동과 함께 탄탄한 몸을 만들어보고 싶습니다.</p></label>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio11" data-item="3" name="radio3"
												value="3" /> <label for="radio11"><span></span>
											<p>평소 외소한 몸에 마음에 들지 않아, 이번 기회를 통해 건장하고 다부진 몸으로 만들어 보고
													싶습니다.</p></label>
										</div>
									</div>
								</div>
								<div class="mm-survey-page" data-page="4">
									<div class="mm-survery-content">
										<div class="mm-survey-question">
											<p>혹시 당뇨 혹은 고혈압이 있으십니까?</p>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio13" data-item="4" name="radio4"
												value="0" /> <label for="radio13"><span></span>
											<p>1형 당뇨를 앓고 있어요.</p></label>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio14" data-item="4" name="radio4"
												value="0" /> <label for="radio14"><span></span>
											<p>2형 당뇨를 앓고 있어요.</p></label>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio15" data-item="4" name="radio4"
												value="0" /> <label for="radio15"><span></span>
											<p>고혈압이 있습니다.</p></label>
										</div>
										<div class="mm-survey-item">
											<input type="radio" id="radio16" data-item="4" name="radio4"
												value="0" /> <label for="radio16"><span></span>
											<p>해당 사항 없습니다.</p></label>
										</div>
									</div>
								</div>

							</div>

							<div class="mm-survey-controller">
								<div class="mm-prev-btn">
									<button>이전</button>
								</div>
								<div class="mm-next-btn">
									<button disabled="true">다음</button>
								</div>
								<div class="mm-finish-btn">
									<button>설문 완료</button>
								</div>
							</div>
						</div>
					</div>
				</div>
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
	
	<script type="text/javascript">
	  jQuery('.mm-prev-btn').hide();

      var x;
      var count;
      var current;
      var percent;
      var z = [];

      init();
      getCurrentSlide();
      goToNext();
      goToPrev();
      getCount();
      // checkStatus();
      // buttonConfig();
      buildStatus();
      deliverStatus();
      submitData();
      goBack();

      function init() {
          
          jQuery('.mm-survey-container .mm-survey-page').each(function() {

              var item;
              var page;

              item = jQuery(this);
              page = item.data('page');

              item.addClass('mm-page-'+page);
              //item.html(page);

          });

      }

      function getCount() {

          count = jQuery('.mm-survey-page').length;
          return count;

      }

      function goToNext() {

          jQuery('.mm-next-btn').on('click', function() {
              goToSlide(x);
              getCount();
              current = x + 1;
              var g = current/count;
              buildProgress(g);
              var y = (count + 1);
              getButtons();
              jQuery('.mm-survey-page').removeClass('active');
              jQuery('.mm-page-'+current).addClass('active');
              getCurrentSlide();
              checkStatus();
              if( jQuery('.mm-page-'+count).hasClass('active') ){
                  if( jQuery('.mm-page-'+count).hasClass('pass') ) {
                      jQuery('.mm-finish-btn').addClass('active');
                  }
                  else {
                      jQuery('.mm-page-'+count+' .mm-survery-content .mm-survey-item').on('click', function() {
                          jQuery('.mm-finish-btn').addClass('active');
                      });
                  }
              }
              else {
                  jQuery('.mm-finish-btn').removeClass('active');
                  if( jQuery('.mm-page-'+current).hasClass('pass') ) {
                      jQuery('.mm-survey-container').addClass('good');
                      jQuery('.mm-survey').addClass('okay');
                  }
                  else {
                      jQuery('.mm-survey-container').removeClass('good');
                      jQuery('.mm-survey').removeClass('okay');
                  }
              }
              buttonConfig();
          });

      }

      function goToPrev() {

          jQuery('.mm-prev-btn').on('click', function() {
              goToSlide(x);
              getCount();			
              current = (x - 1);
              var g = current/count;
              buildProgress(g);
              var y = count;
              getButtons();
              jQuery('.mm-survey-page').removeClass('active');
              jQuery('.mm-page-'+current).addClass('active');
              getCurrentSlide();
              checkStatus();
              jQuery('.mm-finish-btn').removeClass('active');
              if( jQuery('.mm-page-'+current).hasClass('pass') ) {
                  jQuery('.mm-survey-container').addClass('good');
                  jQuery('.mm-survey').addClass('okay');
              }
              else {
                  jQuery('.mm-survey-container').removeClass('good');
                  jQuery('.mm-survey').removeClass('okay');
              }
              buttonConfig();
          });

      }

      function buildProgress(g) {

          if(g > 1){
              g = g - 1;
          }
          else if (g === 0) {
              g = 1;
          }
          g = g * 100;
          jQuery('.mm-survey-progress-bar').css({ 'width' : g+'%' });

      }

      function goToSlide(x) {

          return x;

      }

      function getCurrentSlide() {

          jQuery('.mm-survey-page').each(function() {

              var item;

              item = jQuery(this);

              if( jQuery(item).hasClass('active') ) {
                  x = item.data('page');
              }
              else {
                  
              }

              return x;

          });

      }

      function getButtons() {

          if(current === 0) {
              current = y;
          }
          if(current === count) {
              jQuery('.mm-next-btn').hide();
          }
          else if(current === 1) {
              jQuery('.mm-prev-btn').hide();
          }
          else {
              jQuery('.mm-next-btn').show();
              jQuery('.mm-prev-btn').show();
          }

      }

      jQuery('.mm-survey-q li input').each(function() {

          var item;
          item = jQuery(this);

          jQuery(item).on('click', function() {
              if( jQuery('input:checked').length > 0 ) {
                  // console.log(item.val());
                  jQuery('label').parent().removeClass('active');
                  item.closest( 'li' ).addClass('active');
              }
              else {
                  //
              }
          });

      });

      percent = (x/count) * 100;
      jQuery('.mm-survey-progress-bar').css({ 'width' : percent+'%' });

      function checkStatus() {
          jQuery('.mm-survery-content .mm-survey-item').on('click', function() {
              var item;
              item = jQuery(this);
              item.closest('.mm-survey-page').addClass('pass');
          });
      }

      function buildStatus() {
          jQuery('.mm-survery-content .mm-survey-item').on('click', function() {
              var item;
              item = jQuery(this);
              item.addClass('bingo');
              item.closest('.mm-survey-page').addClass('pass');
              jQuery('.mm-survey-container').addClass('good');
          });
      }

      function deliverStatus() {
          jQuery('.mm-survey-item').on('click', function() {
              if( jQuery('.mm-survey-container').hasClass('good') ){
                  jQuery('.mm-survey').addClass('okay');
              }
              else {
                  jQuery('.mm-survey').removeClass('okay');	
              }
              buttonConfig();
          });
      }

      function lastPage() {
          if( jQuery('.mm-next-btn').hasClass('cool') ) {
              alert('cool');
          }
      }

      function buttonConfig() {
          if( jQuery('.mm-survey').hasClass('okay') ) {
              jQuery('.mm-next-btn button').prop('disabled', false);
          }
          else {
              jQuery('.mm-next-btn button').prop('disabled', true);
          }
      }

      function submitData() {
          jQuery('.mm-finish-btn').on('click', function() {
              collectData();
              jQuery('.mm-survey-bottom').slideUp();
              jQuery('.mm-survey-results').slideDown();
          });
      }

      function collectData() {
          
          var map = {};
          var ax = ['0','red','mercedes','3.14','3'];
          var answer = '';
          var total = 0;
          var ttl = 0;
          var g;
          var c = 0;

          jQuery('.mm-survey-item input:checked').each(function(index, val) {
              var item;
              var data;
              var name;
              var n;

              item = jQuery(this);
              data = item.val();
              name = item.data('item');
              n = parseInt(data);
              total += n;

              map[name] = data;

          });

          jQuery('.mm-survey-results-container .mm-survey-results-list').html('');

          for (i = 1; i <= count; i++) {

              var t = {};
              var m = {};
              answer += map[i] + '<br>';
              
              if( map[i] === ax[i]) {
                  g = map[i];
                  p = 'correct';
                  c = 1;
              }
              else {
                  g = map[i];
                  p = 'incorrect';
                  c = 0;
              }

              jQuery('.mm-survey-results-list').append('<li class="mm-survey-results-item '+p+'"><span class="mm-item-number">'+i+'</span><span class="mm-item-info">'+g+' - '+p+'</span></li>');

              m[i] = c;
              ttl += m[i];

          }

          var results;
          results = ( ( ttl / count ) * 100 ).toFixed(0);

          jQuery('.mm-survey-results-score').html( results + '%' );

      }

      function goBack() {
          jQuery('.mm-back-btn').on('click', function() {
              jQuery('.mm-survey-bottom').slideDown();
              jQuery('.mm-survey-results').slideUp();
          });
      }
	</script>
</body>
</html>