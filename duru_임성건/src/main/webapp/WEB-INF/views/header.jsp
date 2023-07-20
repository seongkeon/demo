<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="container">
    <div id="boxheader">
        <div id="logo">
            <a href="home.jsp">
                <img src="images/logo.png" width="115" height="100"
                onclick="gohome()">
            </a>
        </div>
        <nav>
            <ul id="topMenu">
                <li><a>사이트 정보<span>▼</span></a>
                    <ul>
                        <li><a href="introduce">인사말</a></li>
                        <li><a href="map">약도</a></li>
                    </ul>
                </li>
                <li><a>메뉴<span>▼</span></a>
                    <ul>
                        <li><a href="#">음식점</a></li>
                        <li><a href="#">택시</a></li>
                        <li><a href="#">프로그램</a></li>
                        <li><a href="#">게시판</a></li>
                    </ul>
                </li>
                <!--
                <li class="suc" id="mname">마이페이지</li>
                <li class="suc" id="mname">XX님</li>
                <li class="suc"><a href="#">로그아웃</a></li>
                -->
                <li class="def"><a href="loginSelect">로그인</a></li>
                <li class="def"><a href="joinSelect">회원가입</a></li>
            </ul>
        </nav>
    </div>
</div>