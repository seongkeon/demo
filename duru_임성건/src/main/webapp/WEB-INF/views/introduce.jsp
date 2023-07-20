<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>인사말</title>
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/header.css">
    <style>
        @font-face {
            font-family: 'TheJamsil5Bold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
        }
        #contain1{
            background-color: #ecf2ff;
            width: 1200px;
            height: 200px;
            margin: 0 auto;
            margin-top: 20px;
            border-radius: 30px;
        }
        #logo1{
            width: 150px;
            margin-top: 35px;
            margin-left: 35px;
        }
        #textbox{
            margin-left: 300px;
            margin-top: -125px;
            font-family: 'TheJamsil5Bold';
            font-size: 20px;
        }
        #title1{
            font-family: 'TheJamsil5Bold';
            margin-left: 360px;
            margin-top: 50px;
        }
        #title2{
            font-family: 'TheJamsil5Bold';
            margin-left: 360px;
            margin-top: 50px;
        }
        #contain2{
            background-color: #ecf2ff;
            margin: 0 auto;;
            width: 1200px;
            height: 580px;
            border-radius: 30px;
            margin-bottom: 50px;
        }
        #food{
            width: 120px;
            height: 100px;
            margin-left: 50px;
            margin-top: 50px;
        }
        #car{
            width: 150px;
            margin-left: 35px;
            margin-top: 90px;
        }
        #program{
            width: 150px;
            margin-left: 35px;
            margin-top: 120px;
        }
        #ftext1{
            width: 700px;
            margin-left: 300px;
            font-family: 'TheJamsil5Bold';
            font-size: 20px;
            margin-top: -60px;
        }
        #ftext2{
            width: 700px;
            margin-left: 300px;
            font-family: 'TheJamsil5Bold';
            font-size: 20px;
            margin-top: -90px;
        }
        #ftext3{
            margin-left: 300px;
            font-family: 'TheJamsil5Bold';
            font-size: 20px;
            margin-top: -110px;
        }
    </style>
</head>
<body>
<header>
<jsp:include page="header.jsp"></jsp:include>
</header>
<h1 id="title1">두루두루가 처음이세요?</h1>
<br>
<div id="contain1">
    <img src="images/logo.png" id="logo1">
    <div id="textbox">두루두루는 장애인들을 위한 종합 서비스 플랫폼입니다.<br><br><br>장애인들의 편의성과 사회적 참여를 증진시키기 위해 다양한 기능과 정보를 제공하고 있습니다.</div>
</div>
<h1 id="title2">주요서비스</h1>
<br><br><br>
<div id="contain2">
    <img src="images/food-stop-remove.png" id="food">
    <div id="ftext1">장애인 친화 시설을 갖춘 식당을 안내 및 예약할 수 있습니다.</div>
    <img src="images/car-stop-remove.png" id="car">
    <div id="ftext2">장애인에게 이동편의를 제공하는 장애인전용 콜택시를 예약할 수 있습니다.</div>
    <img src="images/program-stop-remove.png" id="program">
    <div id="ftext3">장애인을 위한 기초재활 및 문화예술을 제공하는 프로그램을 신청할 수 있습니다.</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
