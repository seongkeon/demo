<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>예약자 내역</title>
  <script src="js/jquery-3.7.0.min.js"></script>
  <link rel="stylesheet" href="css/footer.css">
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
<style>
  @font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
  }
  *{
    font-family: 'TheJamsil5Bold';
  }
  table {
    border-spacing: 1;
    border-collapse: collapse;
    background: white;
    border-radius: 6px;
    overflow: hidden;
    max-width: 800px;
    width: 100%;
    margin: 10px auto 0;
    position: relative;
  }
  table * {
    position: relative;
  }
  table td, table th {
    padding-left: 8px;
  }
  table thead tr {
    height: 60px;
    background: #ecf2ff;
    font-size: 16px;
  }
  table tbody tr {
    height: 48px;
    border-bottom: 1px solid #E3F1D5;
  }
  table tbody tr:last-child {
    border: 0;
  }
  table td, table th {
    text-align: left;
  }
  table td.l, table th.l {
    text-align: right;
  }
  table td.c, table th.c {
    text-align: center;
  }
  table td.r, table th.r {
    text-align: center;
  }

  @media screen and (max-width: 35.5em) {
    table {
      display: block;
    }
    table > *, table tr, table td, table th {
      display: block;
    }
    table thead {
      display: none;
    }
    table tbody tr {
      height: auto;
      padding: 8px 0;
    }
    table tbody tr td {
      padding-left: 45%;
      margin-bottom: 12px;
    }
    table tbody tr td:last-child {
      margin-bottom: 0;
    }
    table tbody tr td:before {
      position: absolute;
      font-weight: 700;
      width: 40%;
      left: 10px;
      top: 0;
    }
    table tbody tr td:nth-child(1):before {
      content: "Code";
    }
    table tbody tr td:nth-child(2):before {
      content: "Stock";
    }
    table tbody tr td:nth-child(3):before {
      content: "Cap";
    }
    table tbody tr td:nth-child(4):before {
      content: "Inch";
    }
    table tbody tr td:nth-child(5):before {
      content: "Box Type";
    }
  }
  body {

    font: 400 14px 'Calibri','Arial';
    padding: 20px;
  }

  .back-btn{
    margin: 0 auto;
    display: block;
    margin-top: 20px;
    border: none;
    width:120px;
    height: 40px;
    background-color: #4999e4;
    color: white;
    border-radius: 10px;
  }
  .back-btn:hover{
    background-color: #4a82d6;
  }
  h2{
    font-family: 'TheJamsil5Bold';
    width: 60%;
    margin: 0 auto;
    padding: 10px;

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
  #resBookList-bigbox{
    margin-top: 100px;
    margin-bottom: 100px;
  }
  .rb-content{
    text-align: center;
    font-size: small;
  }
  #refuse-btn{
    background-color: #4999e4;
    color: white;
    border-color: #4999e4;
    border: none;
    border-radius: 5px;
    width: 50px;
    height: 30px;
    left: 40px;
  }
  #refuse-btn:hover{
    background-color: #4a82d6;
  }
</style>
<body>
<header>
  <jsp:include page="headerAfter.jsp"></jsp:include>
</header>
<div id="resBookList-bigbox">
<div id="banner"><h1>예약자 내역</h1></div>
<table>
  <thead>
  <tr>
    <th style="text-align:center">예약자 이름</th>
    <th style="text-align:center">방문 시간</th>
    <th style="text-align:center">인원</th>
    <th style="text-align:center"></th>
  </tr>
  <thead>
  <tbody>
<c:if test="${empty rbList}">
  <tr>
    <td colspan="4" style="text-align: center;">현재 예약된 고객이 없습니다.</td>
  </tr>
</c:if>
      <c:forEach items="${rbList}" var="resBook">
        <tr>
          <td class="rb-content">${resBook.rb_uname}</td>
          <td class="rb-content">${resBook.rtime}</td>
          <td class="rb-content">${resBook.rhead_count}</td>
          <td><button type="button" id="refuse-btn" data="${resBook.rbook_num}">거절</button></td>
        </tr>
      </c:forEach>
  </tbody>
</table>
<div class="paging"></div>
<button class="back-btn" type="button" onclick="goBack()">뒤로가기</button>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
  //이전 페이지 이동
  function goBack() {
    window.history.back();
  }

  $(document).on("click", "#refuse-btn", function (){
    let idx = $(this).attr("data");
    console.log(idx);
    location.href = "rRefuse?rbook_num=" + idx;
  })

</script>
</html>