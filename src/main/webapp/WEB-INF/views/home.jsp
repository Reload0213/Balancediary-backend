<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <!-- swiper -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    
    <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    
    <!-- Kakao Map API Key -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb642196967940a216f068364435eabe&libraries=services"></script>

    <!-- https://fontawesome.com/start -->
    <script src="https://kit.fontawesome.com/f1def33959.js" crossorigin="anonymous"></script>
    <!-- default css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/format.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500&display=swap');
        @import url('http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css');

        * {
            box-sizing:border-box;
            font-family: 'Montserrat', sans-serif; 
        }

        body {
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
            height: 300px;
        }
        /* header */

        #top-area {
            width: 100%;
            height: 100px;
            position: fixed;
            top: 0;
            z-index: 200;
        }

        /* hamburger-menu */

        
        nav {
            margin: 0 auto;
        }

        .h-open-btn {
            font-size: 2em;
            display: none;
        }

        .h-close-btn {
            font-size: 2em;
        }

        nav .hamburger_menu {
            position: fixed;
            text-align: center;
            z-index: 300;
            left: -300px;
            top: 0;
            width: 250px;
            height: 100%;
            overflow: hidden;
            background: #fff;
            -webkit-box-shadow: 1px 1px 5px rgba(0, 0, 0, .1);
            box-shadow: 1px 1px 5px rgba(0, 0, 0, .1);
            -webkit-transition: left 0.5s ease-out;
            transition: left 0.5s ease-out;
        }

        nav .hamburger_menu.on {
                left: 0;
            }

        a.h-close-btn {
            position: relative;
            z-index: 101;
            top: 0;
            margin: 50px 0 0 150px;
            width: 40px;
            height: 40px;
            line-height: 0;
        }

        nav .hamburger_menu .logo {
            margin-top: 100px;
        }

        nav .hamburger_menu .logo a {
            text-decoration: none;
            font-family: "Open Sans", sans-serif;
            font-size: 1.125em;
            font-weight: 600;
            color: #555;
        }

        nav .hamburger_menu ul {
            z-index: 101;
            margin-top: 50px;
        }

        nav .hamburger_menu ul li {
            display: block;
            margin-bottom: 30px;
        }

        nav .hamburger_menu ul li a {
            text-decoration: none;
            font-size: 1em;
            color: #555;
        }

        nav .hamburger_menu li a:hover {
            font-weight: bold;
        }

        .overlay {
            position: fixed;
            z-index: 100;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            -webkit-transition: left 0.5s ease-out;
            transition: left 0.5s ease-out;
        }

        .open_status .container {
            margin-left: 300px;
        }

        .open_status .overlay {
            top: 0;
            left: 250px;
        }

        .open_status .menu_btn {
            background-position: -41px 0;
        }


        /* acodian menu */

        .title {
            font-size: 1.5em;
            font-weight: 300;
            color: #555;
        }

        .menu {
            background-color: #F5F5F5;
        }
        
        .menu .main {
            display: block;
            height: 35px;
            line-height: 35px;
            text-indent: 20px;
            text-decoration: none;
            color: #333;
            cursor: pointer;
            background-color: #fff;
        }

        .menu .main.on {
            font-weight: bold;
        }
        
        .menu .sub {
            display: none;
        }
        
        .menu .sub li {
            height: 35px;
            line-height: 35px;
        }
        
        .menu .sub li a {
            display: block;
            width: 100%;
            height: 100%;
            text-decoration: none;
            color: #555;
        }

        .menu .sub li a:hover {
            color: #333;
        }

        /* header top-menu */

        #top-menu {
            height: 80px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 30px 0 30px;
            width: 100%;
        }

        #top-menu:hover {
            background-color: teal;
        }
        #top-menu a {
            font-weight: bold;
            color: white;
        }
        #top-menu a h1 {
            padding-left: 9em;
            color: white;
        }

        .top-side {
            display: flex;
        }
        .top-side a{
            padding-right: 2em;
        }


        /* header nav-menu */
        #top-nav {
            display: flex;
            justify-content: center;
            width: 100%;
            height: 50px;
        }

        #nav-menu {
            display: flex;
            height: 60px;
        }

        #nav-menu>li {
            position: relative;
        }

        #nav-menu>li>a {
            display: block;
            font-size: 0.95em;
            font-weight: bold;
            color: white;
            text-shadow: 0 1px black;
            padding: 10px 50px;
        }

        #nav-menu>li>a>span {
            font-size: 0.5em;
        }

        #nav-menu>li>a:hover {
            color: #000;
            text-shadow: 0 -1px rgb(219, 219, 219);
        }
        
        #nav-menu>li>ul {
            display: none;
            position: absolute;
            width: 200px;
            background-color: rgba(230, 225, 225, 0.6);
            left: 55px;
            margin: 0;
        }
        
        #nav-menu>li>ul>li>a {
            font-size: 0.85rem;
            font-weight: bold;
            padding: 10px;
            color: #000;
        }
        
        #nav-menu>li:hover>ul {
            display: block;
            z-index: 10;
        }
        
        #nav-menu>li>ul>li>a:hover {
            font-weight: bolder;
            text-shadow: 0 -1px rgb(219, 219, 219);
        }
        
        /* progressbar */
        .progress {
        flex: 10;
        position: relative;
        display: flex;
        flex-basis: 100%;
        height: 5px;
        transition: height 0.3s;
        background: #F5F5F5;
        cursor: ew-resize;
        }

        .progress__filled {
        width: 50%;
        background: #215190;
        flex: 0;
        flex-basis: 50%;
        }


        /* tab-menu */
        .tab-content {
            color: white;
            display: flex;
            padding-top: 15%;
            text-align: center;
        }        
        .tab-content-box {
            width: 100%;
            text-align: center;
            position: absolute;
        }
        
        .tab-content h2 {
            margin-bottom: 3em;
        }
        
        .tab-content h1 {
            margin: auto;
            width: 80%;
            font-size: 2vw;
            text-shadow: 0 3px black;
            line-height: 2em;
            padding-bottom: 0.5em;
            margin-bottom: 2em;
            border-bottom: 4px solid white;
        }

        .tab-content p {
            font-weight: bold;
            font-size: 2vh;
        }

        .tab-menu .tab-menu-list{
            background: #F5F5F5;
            display: flex;
            justify-content: center;
        }
        .tab-menu .tab-menu-list li {
            padding: 1em;
        }
        .tab-menu .tab-menu-list a {
            color: #B5B5B5;
        }

        .tab-menu .tab-menu-list a.is_on{
            font-weight: bold;
            color: black;
            border-bottom: 2px solid #333;
        }

        .tab-content-link {
            color: white;
            padding: 1em;
            margin-top: 1em;
            opacity: 80%;
            font-weight: bold;
            border-radius: 30px;
            font-size: 3vh;
        }

        .tab-content-link:hover {
            background-color: #215190;
            opacity: 80%;
            text-shadow: 0 1px black;
            box-shadow: 0 0 10px rgba(0, 0, 0, .6);
        }

        /* personalization */

        .personalization-bg {
            background: url(resources/images/personalization-bg.jpg) no-repeat;
            background-size: cover;
            position: relative;
            width: 100%;
            height: 50vw;
        }

        #personalization-btn{
            color: #333;
            position: absolute;
            top: 13vw;
            left: 30vw;
            font-size: 1.5vw;
            padding: 1em;
            font-weight: bold;
            border-radius: 30px;
        }
        
        .personalization-img {
            position: absolute;
            color: #fff;
            width: 20vw;
            top: 7vw;
            left: 6vw;
            text-align: center;
            line-height: 1.2em;
        }
        
        .personalization-img h3 {
            display: none;
        }
        .personalization-img:hover>h3 {
            background-color: #215190;
            color: #fff;
            text-shadow: 0 1px black;
            box-shadow: 0 0 10px rgba(0, 0, 0, .6);
            padding: 0.5em;
            border-radius: 20px;
            display: block;
        }



        /* slide-tab */
        #prev-btn {
            position: absolute;
            z-index: 100;
            opacity: 55%;
            color: white;
            height: 300px;
            top: 20vw;
            left: 0;
            font-size: 2em;
        }
        
        #next-btn {
            position: absolute;
            z-index: 100;
            color: white;
            opacity: 55%;
            height: 300px;
            top: 20vw;
            right: 0;
            font-size: 2em;
        }
        #prev-btn:hover {
            color: #fff;
        }
        #next-btn:hover {
            color: #fff;
        }
        
        .bgvid {
            display: none;
            position: relative;
            width: 100%; 
            z-index: -100;
        }

        .bgvid.vid_on {
            display: block;
        }


        /* Tablet-dynamic-header */
        @media (max-width: 1100px) {
            /* top-nav */
            #top-nav {
                display: none;
            }

            .h-open-btn {
                display: block;
            }

            /* tab - content */
            .tab-content h1 {
                font-size: 1.4em;
                margin-bottom: 0;
            }

            .tab-content p {
                display: none;
            }

            .tab-content-link {
                margin: 0;
            }
        }

        /* Mobile-dynaminc-header */

        @media (max-width: 768px) {

            /* tab-cotent */
            .tab-content {
                padding-top: 10%;
            }

        }

        /* main */

        /* dont-give-up */
        .dont-giveup-wrap {
            display: flex;
            height: 500px;
        }

        .d-giveup-imgbg {
            display: flex;
            justify-content: right;
            align-items: center;
            width: 50%;
            background-color: #615050;
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;
        }
        
        .d-giveup-img {
            border-radius: 10px;
            width: 70%;
            margin-right: -10%;
        }

        .d-giveup-content-wrap {
            display: flex;
            width: 50%;
        }

        .d-giveup-content {
            text-align: center;
            margin: auto;
            font-weight: bold;
        }
        
        .d-giveup-content h1 {
            padding-bottom: 1em;
            border-bottom: 3px solid #333;
        }
        .d-giveup-content p {
            padding-top: 5em;
        }
        
        
        /* Hot Daily - swiper */
        .swiper-container {
        width: 100%;
        height: 100%;
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 40%;
        height: 40%;
        object-fit: cover;
      }

        .swiper-button-next, .swiper-button-prev {
            top: 2450px;
        }
        .swiper-button-next:after, .swiper-button-prev:after{
            display: none;
            }
        
        .swiper-pagination {
            position: relative;
        }


      /* rcm-recipe */
        .rem-recipe-wrap {
            width: 100%;
            height: 1000px;
            display: flex;
            position: relative;
            flex-direction: column;
            justify-content: center;
            background: url(resources/images/rem-bg.jpg) no-repeat center;
            background-size: cover;
        }

        .rem-recipe-wrap h1{
            padding-top: 2em;
            color: #000;
            font-size: 2em;
            text-shadow: 0 1px #B5B5B5;
            text-align: center;
        }
        .rem-img-box {
            width: 80%;
            padding-left: 8vw;
            border-radius: 30%;
            margin: auto;
        }
        .rem-img-box img {
            width: 80%;
            border-radius: 30px;
            justify-content: center;
        }

        .rem-content {
            position: absolute;
            top: 30%;
            right: 5%;
            background: #fff;
            padding: 1vw;
            font-weight: bold;
            border-radius: 20px;
        }

        .rem-content p {
            font-size: 1vw;
        }

        .rem-btn {
            position: absolute;
            color: black;
            top: 70%;
            right: 15%;
            width: 12em;
            padding: 1em;
            margin-bottom: 5em;
            color: #F5F5F5;
            font-size: 1.2em;
            font-weight: bold;
            border-radius: 30px;
            background-color: #215190;
        }


        
        /* collabo-card  */
        .collabo-title {
            text-align: center;
        }

        .collabo-title p {
            padding: 2em;
        }

        .collabo-cards {
                display: grid;
                grid-template-columns: repeat(4, 1fr);
                gap:20px;
                margin-bottom: 40px;
        }
        .collabo-card-img {
            position: absolute;
            padding: 12vw 0 0 2vw;
        }
        
        .collabo-card-img img{
            border-radius: 50%;
        }

        .collabo-card-img h3 {
            padding-top: 3em;
        }

        .collabo-card-box {
            background-color: #F5F5F5;
        }
        
        .collabo-card-box h3, .collabo-card-box p, .collabo-card-box a{
            padding: 1em;
        }

        .collabo-card-box h3{
            padding-top: 10em;
        }



      /* app-tester */
        .app-tester-wrap {
            width: 100%;
            height: 1200px;
            text-align: center;
            background: url(https://cdn.dribbble.com/users/1345092/screenshots/9976485/media/9a6b5b4b54f25fe77fe9cb14a646aec4.png) no-repeat center;
            background-size: cover;
            text-shadow: 0 2px whitesmoke;
            padding-top: 4em;
            position: relative;
            flex-direction: column;
            line-height: 2.5em;
            font-size: 1.5em;
        }

        .app-tester-btn a{
            color: black;
            margin-top: 16em;
            width: 8em;
            color: #F5F5F5;
            font-size: 1.2em;
            font-weight: bold;
            border-radius: 30px;
            background-color: #215190;
        }


      /* offline-map */
        .offline-wrap {
            display: flex;
            height: 500px;
        }

        .offline-map-bg1 {
            display: flex;
            justify-content: left;
            align-items: center;
            width: 50%;
            background-color: #ECCEA0;
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;
        }
        .offline-map-bg2 {
            display: flex;
            border-radius: 10px;
            width: 80%;
            height: 400px;
            margin-left: -10%;
            padding-right: 10vw;
            background: url("${pageContext.request.contextPath}/resources/images/map-bg.jpg") no-repeat;
        }
        #offline-map {
            width: 80%;
            border-radius: 30px;
            height: 300px;
            margin: auto;
        }

        .offline-content-wrap {
            display: flex;
            width: 50%;
        }
        .offline-content {
            text-align: center;
            margin: auto;
            font-weight: bold;
        }
        .offline-content h1 {
            border-bottom: 3px solid #333;
        }
        .offline-content p {
            padding-top: 5em;
        } 

         /* move-top  */
        #banner {
        position: fixed;
        right: 20px;
        text-align: center;
        color: #fff;
        padding-top: 0.5em;
        border-radius: 50%;
        bottom: 50px;
        width: 50px;
        height: 50px;
        background: #215190;
        display: none;
        box-shadow: 0 0 10px rgba(0, 0, 0, .6);
        }

        #banner.on {
        position: absolute;
        bottom: 500px;
        }   

        #banner i {
            color: white;
        }

         /* Mobile-dynamic-main */
        @media (max-width: 1024px) {
            
            /* recommend */
            .rem-img-box {
                width: 100%;
                margin: 0;
            }

            .rem-img-box img {
                width: 100%;
            }

            /* collobo */
            .collabo-cards {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
            }

            .collabo-card-img {
                padding: 25vw 0 0 2vw;
            }

            /* offline */
            .offline-map-bg2 {
                margin-left: 2vw;
                padding-right: 2vw;
            }

        }   
           
         /* Moblie-dynamic-main */
        @media (max-width: 768px) {

            /* recommend */
            .rem-content {
                top: 40%;
                right: 10px;
            }

            .rem-btn {
                right: 10px;
                bottom: 10px;
            }

            /* collabo */
            .collabo-cards {
                display: grid;
                grid-template-columns: repeat(1, 1fr);
            }
            
            .collabo-card-img {
                padding: 60vw 0 0 2vw;
            }

            /* offline */
            .offline-wrap {
                display: flex;
                flex-direction: column;
                margin-bottom: 200px;
            }

            .offline-content-wrap {
                width: 100%;
            }

            .offline-map-bg1 {
                width: 100%;
            }
            .offline-map-bg2 {
                width: 100%;
                margin: 4vw;
            }
        }


        /* footer */
        footer {
            width: 100%;
            background-color: #377E7F;
            color: #F5F5F5;
            display: flex;
        }
        .footer-logo {
            padding-top: 6em;
            width: 15%;
            text-align: center;
        }
        .footer-logo a{
            color: white;
            font-weight: bold;
            font-size: 1.5em;
        }
        .footer-content-box {
            width: 100%;
        }
        .footer-infor {
            padding-top: 2em;
            padding-left: 6em;
            display: flex;
        }
        .footer-infor article {
            padding-left: 2em;
        }
        .footer-nav {
            display: flex;
            flex-wrap: wrap;
            font-weight: bold;
            padding-top: 2em;
            padding-right: 10em;
            justify-content: center;
        }

        .footer-nav a {
            color: #fff;
        }

        .footer-aBox {
            display: grid;
            padding: 2em 5em;
            margin-right: 10em;
            grid-template-columns: repeat(4, 1fr);
        }
        .footer-aBox a{
            text-align: center;
            font-size: 2.5em;
            padding: 10px;
            color: white;
        }
        .footer-aBox img {
            width: 60%;
            height: 50px;
        }
        .copyright {
            padding-right: 10em;
            text-align: center;
        }

        /* Mobile-dynamic-footer */
        @media (max-width: 768px) {
            .footer-aBox {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
</head>
<body>
    <div id="container">
        <header>
                <section id="top-area">
                    <section id="top-menu">   
                        <div><a href="#" class="h-open-btn"><i class="fas fa-bars"></i></a></div>
                    <div><a href="home"><h1>BalanceDiary</h1></a></div>
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
                <section class="content-area">
                <div class="tab-content-box">
                    <div id="lean-mass-up" class="tab-content" style="display: block">
                        <h2>당신은 어떤 식단을 원하십니까?</h2>
                        <h1>탄탄하고 건강미 넘치는 몸을 가꾸고 싶나요?</h1>
                        <p>바쁜 생활 혹은 잘못된 습관으로 인해 나도 모르게 불어난 몸을 바꾸고 싶어 운동을 시작했으나, 맘처럼 변화가 없거나 작은 변화가 있었지만 그것도 잠시 다시 제자리걸음인 것만 같아 고민이시지 않은가요?</p><br>
                        <p>건강한 체중감량을 통해 날씬하고 탄탄한 몸을 만드는 식단을 함께 알아보러 가보실까요?</p>
                        <a href="${pageContext.request.contextPath}/lean-mass-up" class="tab-content-link">린매스업 식단 살펴보기 ></a>
                    </div>
                    
                    <div id="diet" class="tab-content">
                        <h2>당신은 어떤 식단을 원하십니까?</h2>
                        <h1>늘어난 뱃살, 운동할 시간은 부족하고 식단을 통해 체중감량을 하고 싶으신가요?</h1>
                        <p>오랜 기간 잘못된 식습관으로 인해 늘어난 체중 때문에 늘 고민하고 먹고싶은 것을 참아도 보고 
                            굶어봐도 금방 제자리인 몸무게에 힘들어 하고 계신가요?</p><br>
                            <p>이대로는 건강조차 헤칠수 있습니다. 먹지않고 굶는 것은 결국 단기적일뿐, 건강한 식습관을 통해 이젠 굶지 않고 챙겨먹으면서
                                날씬한 몸을 만드는 식단을 함께 알아보러 가보실까요?</p>
                                <a href="${pageContext.request.contextPath}/diet" class="tab-content-link">체중감량 식단 살펴보기 ></a>
                            </div>
                            
                            <div id="bulk-up" class="tab-content">
                                <h2>당신은 어떤 식단을 원하십니까?</h2>
                                <h1>왜소한 체형에서 이제 그만<br> 건장하고 큰 골격의 멋진 몸으로 바뀌고 싶나요?</h1>
                                <p>어릴적부터 외소해서 아무리 열심히 운동을 하고, 뭐든지 잘챙겨먹는데도 불구하고 성장하지 않는 몸에 스트레스 받고, 남들이 항상
                                    너무 이렇게나 잘먹는데 어떻게 이렇게 말랐냐는 소리를 듣지는 않으신가요?</p><br>
                                    <p>지금부터 조금만 식습관을 바꾸고, 개선하면 건장하고 멋진 몸으로 거듭날 수 있습니다. 우리 함께 알아보러 가보실까요?</p>
                                    <a href="${pageContext.request.contextPath}/bulk-up" class="tab-content-link">벌크업 식단 살펴보기 ></a>
                                </div>
                                <button id="prev-btn"><i class="fas fa-chevron-circle-left"></i></button>
                                <button id="next-btn"><i class="fas fa-chevron-circle-right"></i></button>
                            </div>
                            <video autoplay loop muted class="bgvid">
                                <source src="${pageContext.request.contextPath}/resources/video/lean-mass-up.mp4" type="video/mp4">
                            </video>
                            <video autoplay loop muted class="bgvid">
                                <source src="${pageContext.request.contextPath}/resources/video/diet.mp4" type="video/mp4">
                            </video>
                            <video autoplay loop muted class="bgvid">
                                <source src="${pageContext.request.contextPath}/resources/video/bulk-up.mp4" type="video/mp4">
                            </video>
                        </section>
                        <div class="progress">
                            <div class="progress__filled"></div>
                        </div>
                        <div class="tab-menu">
                            <ul class="tab-menu-list">
                                <li>
                                    <a href="#lean-mass-up" class="tab-btn is_on" data-num ="0">다이어트 + 근육 증가</a>
                                </li>
                            <li>
                                <a href="#diet" class="tab-btn" data-num ="1">단순 체중 감량</a>
                            </li>
                            <li>
                                <a href="#bulk-up" class="tab-btn" data-num ="2">체중 + 근육 증량</a>
                            </li>      
                        </ul>
                    </div>
                </header>
                <main>
                    <p class="blank"></p>
                    <section class="personalization-bg">
                        <div id="personalization-btn">
                            <h1>어떤 식단이 좋을지 모르겠나요?</h1>
                            <div class="personalization-img" >
                                <a href="${pageContext.request.contextPath}/personalization"><img src="${pageContext.request.contextPath}/resources/images/personalization-img.png" alt="porsonalization"></a>
                                <h3>설문을 통해 도움 받기</h3>
                            </div>
                        </div>
                    </section>
                    <p class="blank"></p>
            <section class="dont-giveup-wrap">
                <div class="d-giveup-imgbg">
                   <img src="${pageContext.request.contextPath}/resources/images/dont-give-up.webp" class="d-giveup-img" alt="d-giveup-img">
                </div>
                <article class="d-giveup-content-wrap">
                    <div class="d-giveup-content">
                        <h1>We Can Do It !</h1>
                        <p>여러분들이 포기하지 않는다면 <br>
                            저희들도 여러분을 포기 하지않겠습니다.
                            <br><br><br>
                            
                            포기하지마세요.</p>
                    </div>
                </article>
            </section>
            <p class="blank"></p>
            <section id="hot-daily-wrap">
                <div class="swiper-container mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="https://placeimg.com/640/480/any" />
                        </div>
                        <div class="swiper-slide">
                            <img src="https://placeimg.com/640/480/animals" />
                        </div>
                        <div class="swiper-slide">
                            <img src="https://placeimg.com/640/480/nature" />
                        </div>
                        <div class="swiper-slide">
                            <img src="https://placeimg.com/640/480/people" />
                        </div>
                        <div class="swiper-slide">
                            <img src="https://placeimg.com/640/480/tech" />
                        </div>
                    </div>
                    <button class="swiper-button-prev"><i class="fas fa-chevron-circle-left"></i></button>
                    <button class="swiper-button-next"><i class="fas fa-chevron-circle-right"></i></button>
                    <div class="swiper-pagination"></div>
                    <div>
                    </div>
                </div>
            </section>
            <p class="blank"></p>
            <section id="rcm-recipe">
                <article class="rem-recipe-wrap">
                    <h1 class="rem-recipe-title">11월 4째주<br>
                    BalanceDiary 추천 레서피</h1>
                    <div class="rem-img-box">
                        <article class="rem-content">
                                <h2>참치 아보카도 샐러드</h2>
                                <hr>
                                <p>참치를 혹시 좋아하시나요? 무거운 마요네즈가 아닌 타르트 라임과<br>
                                    올리브 오일 드레싱으로 15분 이내에 빠르고 간단하며 <br>
                                    저렴한 식사를 드실 수 있습니다!</p>
                        </article>
                        <img src="${pageContext.request.contextPath}/resources/images/rem-img.jpg" alt="rem-img" width="60%">
                        <a href="${pageContext.request.contextPath}/recommend" class="rem-btn">11월 4째주 추천 레시피 보러가기</a>
                    </div>
                </article>
            </section>
            <p class="blank"></p>
            <section id="collabo-wrap">
                <div class="collabo-title">
                    <h1> 제 2회 Balance Diary 콜라보</h1>
                    <p>믿을 수 있고 친근하게 유명 셀럽과 함께 식단 관리를 해보아요 ></p>
                </div>
                <article class="collabo-cards">
                      <div class="collabo-card-box">
                        <div class="collabo-card-img"><img src="${pageContext.request.contextPath}/resources/images/beak.png" alt="백종원"></div>
                        <img src="${pageContext.request.contextPath}/resources/images/collabo-card1.png" alt="백종원">
                        <h3>요식업의 선두주자 ‘백종원’</h3>
                        <p>
                            1994년부터 더본코리아를 세워서 경영 중인 그는 새마을 식당, 한신포자, 홍콩반점0410, 미정 국수 등 대중들에게도 친숙한 여러 프렌차이즈를 운영 중이며, 중식, 한식, 분식 등은 물론 카페 “빽다방”까지 거의 모든 범위를 아우르는 대한민국에서 가장 친숙하며 실력을 인정받은 CEO이자 요리 연구가이다.

                            그와 함께 그의 음식에 대한 다향한 경험에서 나오는 건강에 대한 철학과 그가 즐겨 먹는 비밀 레서피를 함께 알아보자 
                        </p>
                        <a href="#">레서피 보러가기 <i class="fas fa-chevron-right"></i></a>
                      </div>
                      <div class="collabo-card-box">
                        <div class="collabo-card-img"><img src="${pageContext.request.contextPath}/resources/images/SWFather.png" alt="승우아빠"></div>
                        <img src="${pageContext.request.contextPath}/resources/images/collabo-card2.png" alt="승우아빠" />
                        <h3> 유튜버 ‘승우아빠’</h3>
                        <p>
                            셰프 출신 요리 유튜버로 유명 호텔에서도 근무한 경험이 있을 정도로 실력자다. 초보자도 따라 하기 쉬운 요리를 소개하는 ‘남편세끼’, 한가지 재료로 N가지 요리법을 알려주는 ‘세상 간단한 시리즈’, 재료나 조리도구에 대한 다양한 이야기와 꿀팁을 소개하는 ‘궁금해 요리’ 등 요리에 관한 다양한 콘텐츠가 있다. 쉽고 간단한 레시피를 소개하고, 매번 ‘사드세요.. 제발!’이라는 결론과 함께 특유의 유머 감각으로 많은 이들의 호응을 얻고 있다.

                            이번에는 그 만의 따라하기 쉬우면서도 건강한 레서피를 함께 알아보자.
                        </p>
                        <a href="#">레서피 보러가기 <i class="fas fa-chevron-right"></i></a>
                      </div>
                      <div class="collabo-card-box">
                        <div class="collabo-card-img"><img src="${pageContext.request.contextPath}/resources/images/choi.png" alt="최현석"></div>
                        <img src="${pageContext.request.contextPath}/resources/images/collabo-card3.png" alt="최현석" />
                        <h3> 크레이지 셰프 ‘최현석’ </h3>
                        <p>
                            맛있는 음식을 먹고 나면 안 좋았던 기억도 잊혀질 정도로 행복해진다. 거기에 미감 있는 플레이팅이 더해지면 감탄이 절로 나온다. 셰프들이 출연하는 방송이 많아지고 있는 셰프전성시대. 그 중심에 최현석 셰프가 있다. 허세셰프, 크레이지 셰프 등 다양한 별명을 갖고 있는 그는 고졸출신이지만 학력이라는 벽을 뛰어넘을 정도의 열정과 창의력을 갖고 있다. 1,2년 일하다가 다른 곳으로 이직하는 요리사와 달리 첫 출근한 직장에서 10년 동안 일하면서 기본기를 다졌다. 그의 성실함 은 창의성 있는 창작요리로 이어졌고, 크레이지 셰프라는 별명까지 얻었다. 최현석 셰프의 고급스럽지만 누구나 할수 있는 건강 레서피를 배워보자.
                        </p>
                        <a href="#">레서피 보러가기 <i class="fas fa-chevron-right"></i></a>
                      </div>
                      <div class="collabo-card-box">
                        <div class="collabo-card-img"><img src="${pageContext.request.contextPath}/resources/images/bok.png" alt="이연복"></div>
                        <img src="${pageContext.request.contextPath}/resources/images/collabo-card4.png" alt="이연복" />
                        <h3> 중화요리의 대가 ‘이연복’</h3>
                        <p>
                        이연복 셰프는 중식계의 스타 요리사로 꼽힌다. 열세 살 중국집 배달 일을 시작으로 43년간 중식 인생을 살아왔다. 중식이 가장 화려한 꽃을 피웠던 70년대, 화려함의 극치를 자랑하던 당대 최고의 중식당 사보이 호텔의 '호화대반점'에서 요리의 꽃을 피우기 시작했다. 이어 대만대사관 최연소 주방장에 오르며 명성을 날렸다.

                        '목란'의 오너 셰프인 이연복의 탕수육와 동파육은 최고의 맛으로 미식가들의 칭송을 받고 있다. 후각을 잃고, 오직 미각과 손끝의 감각만으로 대한민국 미식가들을 사로잡은 이연복 셰프는 '황금비율의 신'으로 불린다. 
                        그와 함께 이색적인 건강 레서피를 배워보자.
                        </p>
                        <a href="#">레서피 보러가기 <i class="fas fa-chevron-right"></i></a>
                      </div>
                </article>
                <p class="blank"></p>
            <section id="app-tester">
                <article class="app-tester-wrap">
                    <h2>여러분들의 식단관리를 함께 할 BalanceDiary가 <br>
                        모바일앱으로도 개발 중에 있습니다. 초기 버전부터 함께 해주실<br>
                        베타 테스터분들을 모집 중 입니다. </h2>
                    <div class="app-tester-btn"><a href="${pageContext.request.contextPath}/appTester">신청하러 가기</a></div>
                </article>
            </section>    
            <p class="blank"></p>
            </section>
            <section class="offline-wrap">
                <div class="offline-content-wrap">
                    <div class="offline-content">
                        <h1>오프라인 상담 오픈</h1>
                        <p>회원님들과 좀 더 친밀하게 다가가기 위해<br>
                            전문 영양사 및 퍼스널 트레이너 출신<br>
                            상담직원 분들 및 현직 종사자분들과 오프라인 상담을<br>
                            받으실 수 있는 공간을 마련했습니다.<br>
                            <br><br>
                            언제든 열려있으니 마음 편히 찾아와주세요. <br>
                            항상 여러분과 함께 하겠습니다.</p>

                        <p><a href="#">찾아오시는 길</a></p>
                    </div>
                </div>
                <div class="offline-map-bg1">
                <div class="offline-map-bg2">
                   <div id="offline-map"></div>
                </div>
                </div>
            </section>
        </main>
        <p class="blank"></p>
        <div id="banner">
           <a href=""><i class="fas fa-arrow-up"></i></a>
        </div>
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
    
    <script>
        
            // hamburger-nav
            $(function () {
            const $body = $("body");
            const $container = $(".container");
            const $openBtn = $(".h-open-btn");
            const $closeBtn = $(".h-close-btn");
            const $menu = $(".hamburger_menu");
            const $overlay = $(".overlay");
            
            $("a[href$='#']").on("click", function(e){
                e.preventDefault();
            });

            $openBtn.on("click",function(){
                if($body.hasClass("open_status")){
                    toggleMenu("close");
                }else{
                    toggleMenu("open");
                }
            });

            $closeBtn.on("click",function(){
                if($body.hasClass("open_status")){
                    toggleMenu("close");
                }else{
                    toggleMenu("open");
                }
            });

            $overlay.on("click", function(){
                if($body.hasClass("open_status")){
                    toggleMenu("close");
                }
            });

            function toggleMenu(str){
                if(str == "open"){
                    $body.addClass("open_status");
                    $menu.addClass("on");
                }
                if(str == "close"){
                    $body.removeClass("open_status");
                    $menu.removeClass("on");
                }
            }
        });

        // acodian-nav

        $(function () {
            $(".sub").hide();

            $(".main").on("click",function(){
                if(!($(this).hasClass("on"))){
                    $(".main").removeClass("on");
                    $(this).addClass("on");
                    $(".sub").slideUp("fast");
                    $(this).next().slideDown("fast");
                }else{
                    $(this).removeClass("on");
                    $(this).next().slideUp("fast");
                }
            });
        })


        // offline-map
        var mapContainer = document.getElementById('offline-map'),
            mapOption = {
            center: new kakao.maps.LatLng(37.4778429, 126.8784392),
            level: 3
            };
            var map = new kakao.maps.Map(mapContainer, mapOption);

            // 마커가 표시될 위치입니다 
            var markerPosition  = new kakao.maps.LatLng(37.4778429, 126.8784392); 

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                position: markerPosition
            });

            // 마커가 지도 위에 표시되도록 설정합니다
            marker.setMap(map);


        // hot-daily-menu 
      let swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });        


        // scroll top-menu
        window.onscroll = function(){ scrollFunction()};
        const navText = document.querySelectorAll("#nav-menu>li>a");

        function scrollFunction() {
        if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {

            document.getElementById("top-menu").style.backgroundColor = "teal";
            document.getElementById("top-nav").style.backgroundColor = "#F5F5F5";
            document.getElementById("banner").style.display = "block";
            
            for (const nText of navText) {
                nText.style.color = "#464646";
            };
        } else {
            document.getElementById("top-menu").style.backgroundColor = "";
            document.getElementById("top-nav").style.backgroundColor = "";
            document.getElementById("banner").style.display = "none";
            for (const nText of navText) {
                nText.style.color = "";
                };
            }
        }

        // tab-content        
        const tabList = document.querySelectorAll('.tab-menu .tab-menu-list li');
        const tabListA = document.querySelectorAll('.tab-menu .tab-menu-list li a');
        const tabContents = document.querySelectorAll('.content-area .tab-content')

        for(var i = 0; i < tabList.length; i++){
        tabList[i].querySelector('.tab-btn').addEventListener('click', function(e){
         e.preventDefault();
        for(var j = 0; j < tabList.length; j++){
         tabContents[j].style.display = 'none';
         tabListA[j].classList.remove("is_on")
         }
        
        vidIndex = this.dataset.num;
        showVideo(vidIndex);

        activeCont = this.getAttribute('href');
        document.querySelector(activeCont).style.display = 'block';
         
        activetab = this.classList.add("is_on");
        });
    }


        // slide-tab
        const slideTabCont = document.querySelectorAll('.content-area .tab-content');
        const prevBtn = document.getElementById("prev-btn");
        const nextBtn = document.getElementById("next-btn");
        let current = 0;
        function showTab(n){
            for (let index = 0; index < slideTabCont.length; index++) {
                slideTabCont[index].style.display = "none";
                tabListA[current].classList.remove("is_on");
            }
            slideTabCont[n].style.display = "block";
        }

        function prevTab(){
                if(current > 0) current -= 1;
                    else current = slideTabCont.length - 1;
                    showTab(current);
                    showVideo(current);
                }
            
        function nextTab(){
                if(current < slideTabCont.length - 1) current += 1;
                    else current = 0;
                    showTab(current);
                    showVideo(current);
                }

        prevBtn.addEventListener("click", function(){
            prevTab();
        });
        nextBtn.addEventListener("click", function(){
            nextTab();
        });
        showTab(current);


        const tabVideo = document.querySelectorAll('.bgvid');
        function showVideo(n){
            for (const bgvid of tabVideo) {
                bgvid.classList.remove("vid_on");
            }
            tabVideo[n].classList.add("vid_on");
        }
        showVideo(current);


        // progress_bar
        const video = document.querySelector('.vid_on');
        const progressBar = document.querySelector('.progress__filled');
        const progress = document.querySelector('.progress');

    

        function handleProgress() {
                const percent = (video.currentTime / video.duration) * 100;
                progressBar.style.flexBasis = `${percent}%`;
                }
            video.addEventListener('timeupdate', handleProgress);       
       
            
            
        // 상단 바로가기 사이드 배너
        $(function() {
        var $w = $(window),
        footerHei = $('footer').outerHeight(),
        $banner = $('#banner');

        $w.on('scroll', function() {
        
        var sT = $w.scrollTop();
        var val = $(document).height() - $w.height() - footerHei;

            if (sT >= val)
                $banner.addClass('on')
            else
                    $banner.removeClass('on')

            });

            var delay = 1000;
            $banner.on('click', function() {
            $('html, body').stop().animate({scrollTop: 0}, delay);
            });

        });

    </script>
</body>
</html>