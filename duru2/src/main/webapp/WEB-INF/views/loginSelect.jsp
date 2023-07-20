<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    @font-face {
        font-family: 'TheJamsil5Bold';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    }
    h1{
        font-family: 'TheJamsil5Bold';
        text-align: center;
    }

    .container{
        text-align: center;

    }
    .user{
        background-color: #ecf2ff;
        width: 120px;
        height: 50px;
        border-radius: 5px;
        position: relative;
        font-family: 'TheJamsil5Bold';
        text-align: center;
        line-height: 50px;
        margin : 0 auto;
        right: 130px;
        top: 50px;
    }
    .user:hover{
        background-color: #0050ff;
        color: white;
    }
    .dropdown{
        position: relative;
        margin: 0 auto;
        display: inline-block;
        font-family: 'TheJamsil5Bold';
        text-align: center;
        line-height: 50px;
        left: 130px;
    }
    .dropbtn, .option{
        width: 120px;
        height: 50px;
        background-color: #ecf2ff ;
        border-radius: 5px;
    }
    .option:hover{
        background-color: #0050ff;
        color:white;
    }
    .dropdown-content{
        display: none;
        position : absolute;
    }
    .dropdown:hover .dropdown-content {
        display: block;
    }
    #ls-box{
        margin-top: 400px;
    }
    .option a {
        text-decoration: none;
        color: black;
    }
    .user a{
        text-decoration: none;
        color: black;
    }
</style>
<body>
<div id="ls-box">
    <h1>로그인하실 회원 유형을 선택해주세요</h1>
    <div class="container">
        <div class="user"><a href="userLogin">사용자 로그인</a></div>
        <div class="dropdown">
            <div class="dropbtn">사업자 로그인</div>
            <div class="dropdown-content">
                <div class="option"><a href="resLogin">음식점</a></div>
                <div class="option"><a href="taxLogin">택시</a></div>
                <div class="option"><a href="proLogin">프로그램</a></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
