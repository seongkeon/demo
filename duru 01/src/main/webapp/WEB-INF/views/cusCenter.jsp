<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>고객 센터</title>
    <link rel="stylesheet" href="css/footer.css">
    <style>
        @font-face {
            font-family: 'TheJamsil5Bold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
        }
        #cus-bigbox{
            margin-top: 100px;
            margin-bottom: 100px;
        }
        #h1{
            font-family: 'TheJamsil5Bold';
            margin-left: 380px;
            margin-top: 50px;
        }
        #h4{
            font-family: 'TheJamsil5Bold';
            margin-left: 20px;
        }
        #contain3{
            width: 1200px;
            margin: 0 auto;
            height: 600px;
            background-color: #ecf2ff;
            border-radius: 30px;
        }
        #cus1{
            position: relative;
            width: 1100px;
            height: 30px;
            font-family: 'TheJamsil5Bold';
            background-color: #ecf2ff;
            margin-left: 45px;
            font-size: 20px;
            padding: 50px 0;
        }
        #cus2{
            width: 1100px;
            height: 30px;
            font-family: 'TheJamsil5Bold';
            background-color: #ecf2ff;
            margin-left: 45px;
            margin-top: 40px;
            border-top: 2px solid rgb(206, 206, 206); padding-top: 50px;
            font-size: 20px;
        }
        #cus3{
            width: 1100px;
            height: 30px;
            font-family: 'TheJamsil5Bold';
            background-color: #ecf2ff;
            margin-left: 45px;
            margin-top: 90px;
            border-top: 2px solid rgb(206, 206, 206); padding-top: 50px;
            font-size: 20px;
        }
        #cus4{
            width: 1100px;
            height: 30px;
            font-family: 'TheJamsil5Bold';
            background-color: #ecf2ff;
            margin-left: 45px;
            margin-top: 90px;
            border-top: 2px solid rgb(206, 206, 206); padding-top: 50px;
            font-size: 20px;
        }
    </style>
</head>
<body>
<header>
    <jsp:include page="headerAfter.jsp"></jsp:include>
</header>
<div id="cus-bigbox">
<h1 id="h1" style="display: inline;">고객센터</h1><h4 id="h4" style="display: inline;">자주 하는 질문</h4><br><br><br>
<div id="contain3">
    <div id="cus1">Q. 서비스 이용 가능한 대상자를 알고 싶습니다.<br><br>A. 장애인 및 보호자 분들이 이용 가능합니다.</div>
    <div id="cus2">Q. 접수 안내<br><br>A. 사이트 상단의 메뉴, 메인화면의 자주 찾는 메뉴안의 식당 예약, 택시 호출, 프로그램 신청 메뉴로 접수가 가능합니다.</div>
    <div id="cus3">Q. 휠체어 이용자를 위한 콜택시 예약 절차는 어떻게 되나요? <br><br> A. 휠체어 및 부피가 큰 의료 보조기구나 물건을 가진 승객은 호출시 의료보조기구 여부를 선택하여 중형 택시를 호출하실 수 있습니다.</div>
    <div id="cus4">Q. 서비스 이용 중 문제가 생겼을 때 어떻게 문의할 수 있나요? <br><br> A. 서비스 이용 중 문제 발생시 010-1234-5678로 문의주시면 친절하게 답변드리겠습니다.</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>