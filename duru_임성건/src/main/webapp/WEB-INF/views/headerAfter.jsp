<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>headerAfter</title>
    <link rel="stylesheet" href="css/header.css">
</head>
<body>
<div id="container">
    <div id="boxheader">
        <div id="logo">
            <a href="homeAfter">
                <img src="images/logo.png" width="115" height="100">
            </a>
        </div>
        <nav>
            <div id="top-right">
                <div id="top-list">
                    <li class="def">
                        <button><a href="userInfo" ${not empty uid ? '' : 'hidden'}>마이페이지</a></button>
                        <button><a href="taxInfo" ${not empty tid ? '' : 'hidden'}>마이페이지</a></button>
                        <button><a href="proInfo" ${not empty pid ? '' : 'hidden'}>마이페이지</a></button>
                        <button><a href="resInfo" ${not empty rid ? '' : 'hidden'}>마이페이지</a></button>

                    <%--                        <a href="userInfo">마이페이지</a>--%>
                    </li>

                    <li class="def">${uid} ${rid} ${tid} ${pid}님</li>
                    <form action="logout" method="get">
                        <input class="def" id="logout-btn" type="submit" value="로그아웃">
                    </form>
                </div>
            </div>
            <ul id="topMenu">
                <li><a href="#">사이트 정보<span>▼</span></a>
                    <ul>
                        <li><a href="introduceAfter">인사말</a></li>
                        <li><a href="mapAfter">약도</a></li>
                    </ul>
                </li>
                <li><a href="#">메뉴<span>▼</span></a>
                    <ul>
                        <li><a href="resList">음식점</a></li>
                        <li><a href="#">택시</a></li>
                        <li><a href="#">프로그램</a></li>
                        <li><a href="#">게시판</a></li>
                    </ul>
                </li>

                <li class="def"><a href="#">관련정보<span>▼</span></a>
                    <ul>
                        <li><a href="staInfo">관련시설</a></li>
                        <li><a href="reSite">관련사이트</a></li>
                    </ul>
                </li>
                <li class="def"><a href="cusCenter">고객센터</a></li>
            </ul>
        </nav>
    </div>
</div>
</body>
<script>

</script>
</html>