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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/recommend/recommend.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
    <!-- js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/header.js"></script>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500&display=swap');
        @import url('http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css');

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
          <section class="rem-container">
            <article class="rem-title">
                <h1>11월 4째주<br>
                    BalanceDiary 추천 레시피</h1>
                    <h2>참치 아보카도 샐러드</h2>
                    <hr>
                    <p>참치를 혹시 좋아하시나요? 무거운 마요네즈가 아닌 타르트 라임과<br>
                        올리브 오일 드레싱으로 15분 이내에 빠르고 간단하며 <br>
                        저렴한 식사를 드실 수 있습니다!</p>
            </article>
            <article><img src="${pageContext.request.contextPath}/resources/images/rem-img.jpg" alt=""></article>
            <section class="rem-content-container">
                    <article class="video-wrap">
                        <div class="video">
                            <div class="video-container">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/ywVa9EiX9Sk" title="YouTube video player" 
                                frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                        </div>
                    </article>
                    <article class="rem-content1">
                        <h2>조리법</h2>
                        <p><span>1</span> 참치를 물기를 뺀다. 포크를 사용하여 참치를 접시에 올려주세요. </p>
                        <p><span>2</span> 붉은 피방과 붉은 양파를 얇게 썬다. 오이는 길이로 4등분하고 씨를 제거하고 슬라이스
                            합니다. 샐러리르 세로로 반으로 자른 다음 작은 조각으로 자릅니다. 그런 다음 아보카도를 껍질을 벗기고
                            씨를 제거하고 8등분 합니다.</p>
                            <p><span>3</span> 큰 접시나 개별 접시에 모든 재료를 여러 층으로 배열합니다. </p>
                            <p><span>4</span> 참치를 물기를 뺀다. 포크를 사용하여 참치를 접시에 올려주세요. </p>
                        </article>
                        <article class="rem-content2">
                            <h2>재료</h2>
                            <p>물에 1/2 파운드 참치 캔</p>
                            <p>1/3 아보카도, 8등분</p>
                            <p>(9큰술)붉은 피망, 얇게 썬 것</p>
                            <p>(2/3큰술) 적 양파, 얇게 싼 것 </p>
                            <p>오이, 4등분</p>
                            <p>다진 샐러리 줄기(9 큰술)</p>
                            <p>라임 주스2큰술</p>
                            <p>올리브 오일 1/2컵</p>
                            <p>소금과 후추 맛</p>
                        </article>
                </section>
            </section> 
                
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