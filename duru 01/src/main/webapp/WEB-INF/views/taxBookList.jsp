<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>택시 호출자 목록(사업자)</title>
  <script src="js/jquery-3.7.0.min.js"></script>
  <link rel="stylesheet" href="css/footer.css">
  <script>
    $(function(){
      //메시지 출력
      let m = "${msg}";
      if(m != ""){
        alert(m);
      }
    });
  </script>
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
      width: 820px;
      height: 60px;
      display: flex;
      align-items: center;
      border-radius: 15px;
      margin: 0 auto;
    }
    #banner h1 {
      margin-left: 20px;
    }
    #contain-tbList {
      width: 820px;
      height: 450px;
      background-color: white;
      margin: 0 auto;
      border-left: 2px solid rgb(180, 180, 180);
      border-right: 2px solid rgb(180, 180, 180);
    }
    #locationContainer{
      width: 800px;
      height: 100px;
      background-color: #ecf2ff;
      margin-left: 10px;
      padding-top: 20px;
    }
    #location1{
      margin-left: 10px;
      align-items: center;
    }
    #outputLocation{
      width: 650px;
      height: 60px;
      background-color: rgb(255, 255, 255);
      border-radius: 5px;
      margin-left: 120px;
      margin-top: -20px;
    }
    #destinationContainer{
      width: 800px;
      height: 100px;
      background-color: #ecf2ff;
      margin-left: 10px;
      border-top: 2px solid rgb(180, 180, 180);
      justify-content: space-between;
      padding-top: 20px;
    }
    #destination1{
      margin-left: 10px;
    }
    #outputDestination{
      width: 650px;
      height: 60px;
      background-color: rgb(255, 255, 255);
      border-radius: 5px;
      margin-left: 120px;
      margin-top: -20px;
    }
    #numContainer{
      width: 400px;
      height: 80px;
      background-color: #ecf2ff;
      margin-left: 10px;
      border-right: 2px solid rgb(180, 180, 180);
      border-top: 2px solid rgb(180, 180, 180);
      justify-content: space-between;
      padding-top: 20px;
      float: left;
    }
    #num1{
      margin-left: 10px;
    }
    #outputNum{
      width: 40px;
      height: 40px;
      background-color: rgb(255, 255, 255);
      border-radius: 5px;
      margin-left: 120px;
      margin-top: -20px;
    }
    #carTypeContainer{
      width: 600px;
      height: 80px;
      background-color: #ecf2ff;
      margin-left: 210px;
      border-left: 2px solid rgb(180, 180, 180);
      border-top: 2px solid rgb(180, 180, 180);
      justify-content: space-between;
      padding-top: 20px;
    }
    #carType1{
      margin-left: 10px;
    }
    #outputCarType{
      width: 50px;
      height: 40px;
      background-color: rgb(255, 255, 255);
      border-radius: 5px;
      margin-left: 300px;
      margin-top: -20px;
    }
    #accept{
      border: none;
      width:120px;
      height: 40px;
      background-color: #4999e4;
      color: white;
      border-radius: 10px;
    }
    #accept:hover{
      background-color: #4a82d6;
    }
    #dFinish{
      border: none;
      width:120px;
      height: 40px;
      background-color: #4999e4;
      color: white;
      border-radius: 10px;
    }
    #dFinish:hover{
      background-color: #4a82d6;
    }
    table {
      border-spacing: 1;
      border-collapse: collapse;
      border: 1px;
      background: white;
      border-radius: 6px;
      overflow: hidden;
      max-width: 800px;
      width: 95%;
      margin: 0 auto;
      position: relative;
      top: 30px;
    }
    table * {
      position: relative;
    }
    table td, table th {
      padding-left: 8px;
    }
    table thead tr {
      height: 60px;
      background: #4999e4;
      font-size: 16px;
    }
    table tbody {
      height: 60px;
    }
    table tbody tr:last-child {
      border: 0;
    }
    table td {
      text-align: left;
    }
    table th {
      text-align: center;
    }
    .button-container {
      display: flex;
      justify-content: center;
      margin-top: 40px;
    }

    .button-container button {
      padding: 10px 20px;
      margin: 0 5px;
    }

    .button-container button:first-child {
      margin-right: 10px;
    }

    .button-container button:last-child {
      margin-left: 10px;
    }
    #tbList-bigbox{
      margin-bottom: 100px;
      margin-top: 100px;
    }

  </style>
</head>
<body>
<header>
  <jsp:include page="headerAfter.jsp"></jsp:include>
</header>
<div id="tbList-bigbox">
<div id="banner"><h1>택시 호출 정보</h1></div><br>
<div id="contain-tbList">
  <div id="locationContainer">
    <div id="location"><label id="location1">현재 위치</label>
    </div>
    <div id="outputLocation" style="display: flex; align-items: center;">
      <c:choose>
        <c:when test="${empty taxInfo.current_loc}">
          <c:out value="현재 호출한 택시가 없습니다." />
        </c:when>
        <c:otherwise>
          <c:out value="${taxInfo.current_loc}" />
        </c:otherwise>
      </c:choose>
    </div>
  </div>
  <div id="destinationContainer">
    <div id="destination"><label id="destination1">목적지</label>
    </div>
    <div id="outputDestination" style="display: flex; align-items: center;">
      <c:choose>
        <c:when test="${empty taxInfo.destination}">
          <c:out value="현재 호출한 택시가 없습니다." />
        </c:when>
        <c:otherwise>
          <c:out value="${taxInfo.destination}" />
        </c:otherwise>
      </c:choose>
    </div>
  </div>
  <div id="numContainer">
    <div id="num"><label id="num1">인원수</label>
    </div>
    <div id="outputNum" style="display: flex; align-items: center; justify-content: center;">
      <c:choose>
        <c:when test="${empty taxInfo.thead_count}">
          <c:out value="" />
        </c:when>
        <c:otherwise>
          <c:out value="${taxInfo.thead_count}명" />
        </c:otherwise>
      </c:choose>
    </div>
  </div>
  <div id="carTypeContainer">
    <div id="carType">
      <label id="carType1">차종</label>
    </div>
    <div id="outputCarType" style="display: flex; align-items: center; justify-content: center;">
      <c:choose>
        <c:when test="${empty taxInfo.tcar_kind}">
          <c:out value="" />
        </c:when>
        <c:otherwise>
          <c:out value="${taxInfo.tcar_kind}" />
        </c:otherwise>
      </c:choose>
    </div>
  </div>
  <div class="button-container">
    <button id="accept" onclick="acceptBtn()">수락</button>
    <button id="dFinish" style="display: none;" onclick="completeBtn()">운행 완료</button>
  </div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
  function acceptBtn(){
    //수락 버튼 숨기기
    document.getElementById("accept").style.display = "none";
    //운행 완료 버튼 표시
    document.getElementById("dFinish").style.display = "block";
  }
</script>
</html>
