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
    <script src="https://kit.fontawesome.com/f1def33959.js" crossorigin="anonymous"></script>
    <!-- default css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/format.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/diet/lean-mass-up.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
    <!-- js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/header.js"></script>

    <style>
    
        * {
            box-sizing:border-box;
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
                        <div><a href="member/my-diary">My Diary</a></div>
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
                     <section class="lm-up-wrap">
                <h1>체중 감량 및 근육 증가<br>
                    (상승 다이어트 식단)</h1>
                <div>
                    <img src="${pageContext.request.contextPath}/resources/images/lm-up/lm-up1.png" alt="린메스업 그래프1" width="60%">
                    <img src="${pageContext.request.contextPath}/resources/images/lm-up/lm-up2.png" alt="린메스업 그래프2" width="60%">
                </div>
                <p class="blank"></p>
                <section class="lm-up-content">
                    <h1>가볍고 탄탄한 몸매를 위한 상승 다이어트</h1>
                    <article>
                        <h2>1.일주일에 0.5 ~ 1kg을 빼는 것을 목표로 삼기</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/lm-up/fat-weight.png" alt="하루에 1kg">
                        <p>평균적으로 하루 1,200kal 미만을 섭취하지 않도록 합니다. <br>
                            연령대, 성별, 운동량 보다 심각하게 낮은 칼로리를 삽취하면 근손실이 발생할 위험이 커집니다<br>
                            따라서 욕심부리지 말고 매일 500kcal씩 적게 섭취하는 것이 좋습니다.</p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>2. 근손실을 방지할 건강할 식단 먹기</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/lm-up/lm-up-meal.png" alt="근손실을 방지">
                        <h3>(1) 적절한 단백질 섭취하기</h6>
                        <p>하루동안 섭취해야 하는 최소한의 단백질 양은 여성이 하루 46g, 남성이 56g입니다. <br>
                            따라서 질 좋은 단백질을 매끼 또는 간식으로 충분히 섭취하도록 합니다.<br>
                            (지방이 적은 붉은 육류, 가금류, 해산물, 콩류, 렌틸콩, 두부, 견과류, 땅콩버터, 계란, 저지방 유제품 등)</p>
                        <h3>(2) 과일과 채소 많이 먹기</h6>
                        <p>과일과 채소는 칼로리가 적고 영양분 함량이 높아 포만감도 차고 만족스러우면서도<br>
                           칼로리 섭취량이 적은 식단을 짤 수 있습니다. <br>
                           매일 과일을 2~3회분, 채소를 6회분씩은 먹어주는 것이 좋습니다.</p>
                        <h3>(3) 매일 2~3회 분의 탄수화물 섭취하기</h6>
                        <p>하루 동안 얼마만큼의 탄수화물을 섭취하는지 계산한 뒤에 이를 제한하는 방식으로 진행합니다. <br>
                            일일 탄수화물 섭취량을 60~200g 사이로 제한합니다. <br>
                            저탄수화물 식단은 체중을 빠르게 감량하고 지방을 빠르게 태울 수 있도록 도와줍니다. <br>
                            특히 저지방 식단이나 저칼로리 식단보다 저탄수화물 식단이 훨씬 효율이 높습니다.</p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>3. 충분한 운동으로 근육량 유지하기</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/lm-up/lm-up-exercise.png" alt="충분한 운동">
                        <p>지방을 빼는 데 가장 핵심적인 것이 바로 유산소(심장) 운동입니다. <br>
                            매주 150분을 목표로 잡고 유산소 운동을 하도록 합니다.<br>
                            강도는 너무 강하지 않게 중간 정도가 가장 이상적입니다. <br>
                            (추천 운동 : 요가, 걷기, 달리기, 자전거 타기, 수영, 댄스 등)</p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>4.충분한 휴식 하기</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/lm-up/lm-up-break.png" alt="충분한 휴식">
                        <p>일주일에 하루 또는 이틀 정도를 쉬어주는 것은 몸의 회복을 도우며 <br>
                            순수 근육량을 지속해서 유지하며 증가시킬 수 있도록 합니다.<br>
                            쉬는날이라고 해서 계속 앉아 있거나 침대에 누워서 하루를 보내지 않고 <br>
                            가벼운 산책이나 회복요가 등을 해준다면 당신의 건강에 큰 도움이 될겁니다..</p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>5.적절한 에너지 보급과 휴식에 초점 맞추기</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/lm-up/lm-up-energy.png" alt="휴식">
                        <p>살을 뺄때나 운동을 할 때는 근육의 유지 및 증가에 초점을 맞출 필요가 있습니다. <br>
                            이를 위해 운동 직전과 운동 직후의 영양분 공급에 신경을 써야합니다.</p>
                        <p>- 운동 30분 전 수분 유지를 위해 대량의 음료를 마시고 소량의 탄수화물 식사(또는 간식) 섭취하기</p>    
                        <p>- 운동 전 간식 : 소량의 오트밀(귀리), 작은 과일 조각, 요커트 통밀 크래커 등, <br>
                            운동 후 수분을 보충을 위해 충분한 양의 수분 섭취와 단백질과 탄수화물이 들어간 간단한 식사(간식) 섭취하기</p>   
                        <p>- 운동 후 간식 : 통곡물 칩, 작은 사과, 초콜릿 우유 <br>
                            견과류와 견과일이 들어간 트레일 믹스, 단백질 보조제가 들어간 과일 스무디 등</p>
                    </article>
                    <p class="blank"></p>
                    <article>
                        <h2>상승 다이어트(린매스업) 식단 예시</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/lm-up/lm-up-recipe.jpg" alt="상승 다이어트 식단 예시" width="50%" >
                        <p class="blank"></p>
                        <h2><a href="diary-main" class="move-board">위를 참고해서 이제 나의 식단 공유 및 <br>
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
            <article class="footer-logo"><a href="${pageContext.request.contextPath}/home">BalanceDiary</a></article>
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
                        <p>발행인: 이영주 | 편집인: 이영주 | 발행소: 서울 금천구 가산디지털2로 115 대륭테크노타운 3차 1109호</p>
                        <p>발행연월일: 2011 11. 11 | 전화번호: 02 - 0000 - 0000 </p>
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
                    <a href="https://www.ePrivacy.or.kr"><img src="${pageContext.request.contextPath}/resources/images/ePrivacy.png" alt="ePrivacy"></a>
                    <a href="https://www.kns.or.kr"><img src="${pageContext.request.contextPath}/resources/images/kns.png" alt="kns"></a>
                    <a href="https://www.mfds.go.kr"><img src="${pageContext.request.contextPath}/resources/images/foodsafe.png" alt="foodsafe"></a>
                    <a href="https://www.mohw.go.kr"><img src="${pageContext.request.contextPath}/resources/images/bogun.png" alt="bogun"></a>
                </div>
                <div class="copyright"><h5>Copyright ⓒ balanceDiary co. Ltd All Rights Reserved.</h5></div>
            </section>
        </footer>
    </div>
</body>
</html>