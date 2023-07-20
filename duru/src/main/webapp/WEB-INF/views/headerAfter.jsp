<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>header_after</title>
    <link rel="stylesheet" href="css/header.css">
</head>
<body>
<div id="container">
    <div id="boxheader">
        <div id="logo">
            <a href="header.html">
                <img src="images/logo.png" width="115" height="100">
            </a>
        </div>
        <nav>
            <div id="top-right">
                <div id="top-list">
                    <li class="def" id="mname">마이페이지</li>
                    <li class="def" id="mname">XX님</li>
                    <input class="def" id="logout-btn" type="submit" value="로그아웃">
                </div>
            </div>
            <ul id="topMenu">
                <li><a href="#">사이트 정보<span>▼</span></a>
                    <ul>
                        <li><a href="#">인사말</a></li>
                        <li><a href="#">약도</a></li>
                    </ul>
                </li>
                <li><a href="#">메뉴<span>▼</span></a>
                    <ul>
                        <li><a href="#">음식점</a></li>
                        <li><a href="#">택시</a></li>
                        <li><a href="#">프로그램</a></li>
                        <li><a href="#">게시판</a></li>
                    </ul>
                </li>

                <li class="def"><a href="#">관련정보<span>▼</span></a>
                    <ul>
                        <li><a href="#">관련시설</a></li>
                        <li><a href="#">관련사이트</a></li>
                    </ul>
                </li>
                <li class="def"><a href="#">고객센터</a></li>
                <li class="suc"><a href="#">로그인</a></li>
                <li class="suc"><a href="#">회원가입</a></li>
            </ul>
        </nav>
    </div>
</div>
</body>
</html>
