<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>음식점 예약</title>
    <script src="js/jquery-3.7.0.min.js"></script>
    <link rel="stylesheet" href="css/footer.css">
    <style>
        @font-face {
            font-family: 'TheJamsil5Bold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
        }
        *{
            font-family: 'TheJamsil5Bold';
        }
        #banner{
            background-color: #4999e4;
            width: 800px;
            height: 60px;
            display: flex;
            align-items: center;
            border-radius: 15px;
            margin: 0 auto;
        }

        #banner h1 {
            margin-left: 20px;
        }
        #contain-rb{
            width: 800px;
            height: 400px;
            background-color: #ecf2ff;
            border-radius: 30px;
            margin: 0 auto;
        }
        #bookname{
            margin-top: 30px;
            height: 30px;
            margin-left: 30px;
        }
        #bookname1{
            font-size: 20px;
            margin-left: 100px;
        }
        #timeSelect1{
            display: block;
            margin-top: 50px;
            font-size: 20px;
            margin-left: 100px;
        }
        #timeSelect{
            margin-left: 227px;
            position: relative;
            top: -25px;
            width: 100px;
            height: 30px;
        }
        .quantity {
            display: flex;
            align-items: center;
            width: 40px;
            margin-left: 227px;
            margin-top: 50px;
        }
        .quantity input {
            flex: 1;
            text-align: center;
            width: 40px;
            height: 40px;
            border-radius: 10px;
            border-color: rgb(201, 197, 197);
        }
        .quantity button{
            width: 33px;
            height: 30px;
            margin-left: 10px;
            background-color: #4999e4;
            border-radius: 5px;
            border-color: #62a5e4;
            display: inline-block;
            border: none;
            cursor: pointer;
        }
        .quantity button:hover{
            background-color: #4a82d6;;
        }
        .quantity button:nth-of-type(1) {
            margin-bottom: 5px;
        }

        .quantity button:nth-of-type(2) {
            margin-top: 5px;
        }
        #increase{
            display: inline-block;

        }
        #num{
            font-size: 20px;
            position: relative;
            right: 200px;
            top: 100px;
        }
        .bbtn{
            border: none;
            padding: 15px 30px;
            border-radius: 10px;
            font-family: 'TheJamsil5Bold';
            width:150px;
            background-color: #4999e4;
            color: #fff;
        }
        .bbtn:hover{
            background-color: #4a82d6;
        }
        .centered-buttons {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .centered-buttons .bbtn {
            margin-top: 20px;
            margin: 20px;
        }
        #rb-bigbox{
            margin-top: 100px;
            margin-bottom: 100px;
        }
    </style>
    <link rel="stylesheet" href="css/footer.css">
</head>
<body>
<header>
    <jsp:include page="headerAfter.jsp"></jsp:include>
</header>
<form action="rBookProc" method="post" name="rBookForm" onsubmit="return bookCheck()">
<div id="rb-bigbox">
<div id="banner"><h1 id="title">예약자 정보 작성</h1></div>
<br>
<div id="contain-rb">
    <input type="hidden" name="uid" value="${uid}">
    <input type="hidden" name="rid" value="${r_rid}">
    <label id="bookname1">예약자 이름<input type="text" name="rb_uname" title="예약자 이름" id="bookname"></label>
    <label id="timeSelect1">방문 시간</label>
    <select id="timeSelect" name="rtime" title="예약 시간">
        <option value="" selected>시간선택</option>
        <option value="AM 9:00">AM 9:00</option>
        <option value="AM 10:00">AM 10:00</option>
        <option value="AM 11:00">AM 11:00</option>
        <option value="AM 12:00">AM 12:00</option>
        <option value="PM 1:00">PM 1:00</option>
        <option value="PM 2:00">PM 2:00</option>
        <option value="PM 5:00">PM 5:00</option>
        <option value="PM 6:00">PM 6:00</option>
        <option value="PM 7:00">PM 7:00</option>
        <option value="PM 8:00">PM 8:00</option>
    </select>
    <label id="num">인원</label>
    <div class="quantity">
        <input type="text" id="quantity" value="1" name="rhead_count" title="인원">
        <div class="buttons">
            <button type="button" id="increase"><img src="images/up.png" width="20" height="20"></button>
            <button type="button" id="decrease"><img src="images/down.png" width="20" height="20"></button>
        </div>
    </div>
</div>
<div class="centered-buttons">
    <button class="bbtn" id="bookbtn" type="submit">예약</button>
    <button class="bbtn" id="backbtn" type="button" onclick="goBack()">뒤로가기</button>
</div>
</div>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
    //이전 페이지 이동
    function goBack() {
        window.history.back();
    }

    var quantityInput = document.getElementById("quantity");
    var increaseButton = document.getElementById("increase");
    var decreaseButton = document.getElementById("decrease");

    increaseButton.addEventListener("click", function() {
        var quantity = parseInt(quantityInput.value);
        if (quantity < 20) {
            quantityInput.value = quantity + 1;
        }
    });

    decreaseButton.addEventListener("click", function() {
        var quantity = parseInt(quantityInput.value);
        if (quantity > 1) {
            quantityInput.value = quantity - 1;
        }
    });

    //전부 입력했는지 여부
    function bookCheck(){
    const rbookfm = document.rBookForm;
    console.log(rbookfm);

    let length = rbookfm.length - 1;

        for (let i = 1; i < 4; i++) {
            if(rbookfm[i].value === "" || rbookfm[i].value === null)
             {
                alert(rbookfm[i].title + "을 작성해 주세요.");
                rbookfm[i].focus();
                return false;
            }
        }
        alert("예약이 완료되었습니다.")
        return true;
    }
</script>
</html>
