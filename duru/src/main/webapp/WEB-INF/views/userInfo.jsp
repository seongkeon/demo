<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-07-06
  Time: 오후 2:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>마이페이지</title>
    <style>
        @font-face {
            font-family: 'TheJamsil5Bold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
        }
        *{
            font-family: 'TheJamsil5Bold';
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
            font-size: 30px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        h2 {
            color: #555;
            margin-top: 20px;
            margin-bottom: 10px;
            font-size: 20px;
        }

        .info {
            margin-bottom: 20px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 15px;
        }

        .info:last-child {
            border-bottom: none;
            padding-bottom: 0;
        }

        .info-label {
            color: #999;
            font-size: 14px;
        }

        .info-value {
            color: #333;
            font-weight: bold;
            font-size: 16px;
            margin-bottom: 5px;
        }

        .info-value span {
            color: #666;
            font-weight: normal;
        }

        .btn-container {
            text-align: center;
            margin-top: 30px;
        }

        .btn {
            display: inline-block;
            background-color: #4999e4;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 16px;
            text-decoration: none;
            margin-right: 10px;
            width: 80px;
        }

        .btn:hover {
            background-color: #4a82d6;
        }
        #banner{
            background-color: #4999e4;
            width: 560px;
            height: 60px;
            display: flex;
            line-height: 18px;
            border-radius: 15px;
            margin: 0 auto;
        }
        #banner h1 {
            margin-left: 20px;
        }
        .a{
            border: none;
            width: 100%;
            outline: none;
            font-size: 20px;
        }
        .id{
            height: 22px;
        }
    </style>
    <script>
        $(function(){
            //메시지 출력 부분
            let m = "${msg}";
            if(m != ""){
                alert(m);
            }
        });
    </script>
</head>
<body>
<div id="banner"><h1>마이페이지</h1></div>
<div class="container">


    <div class="info">
        <h2>아이디</h2>
        <p class="info-value" id="username">${member.uid}</p>
    </div>

    <div class="info">
        <h2>이름</h2>
        <p class="info-value" id="name">${member.uname}</p>
    </div>

    <div class="info">
        <h2>집 주소</h2>
        <p class="info-value" id="address">${member.uaddr}</p>
    </div>

    <div class="info">
        <h2>생년월일</h2>
        <p class="info-value" id="birthdate">${member.ubirth}</p>
    </div>

    <div class="info">
        <h2>전화번호</h2>
        <p class="info-value" id="phonenumber">${member.uphone_num}</p>
    </div>

    <div class="info">
        <h2>성별</h2>
        <p class="info-value" id="gender">${member.ugender}</p>
    </div>

    <div class="btn-container">
        <a href="#" class="btn">수정</a>
        <a href="#" class="btn">탈퇴</a>
        <a href="#" class="btn">뒤로가기</a>
    </div>
</div>
</body>
</html>