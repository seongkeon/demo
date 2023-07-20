<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>택시 목록</title>
  <script src="js/jquery-3.7.0.min.js"></script>
  <link rel="stylesheet" href="css/footer.css">
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
    border-spacing: 1px;
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
  #tax-bigbox {
    margin-bottom: 100px;
    margin-top: 100px;
  }
  .tax-content{
    text-align: center;
    font-size: small;
  }
  #tBook-btn{
    background-color: #4999e4;
    color: white;
    border-color: #4999e4;
    border: none;
    border-radius: 5px;
    width: 50px;
    height: 30px;
  }
  #tBook-btn:hover{
    background-color: #4a82d6;
  }
</style>
<body>
<header>
  <jsp:include page="headerAfter.jsp"></jsp:include>
</header>
<div id="tax-bigbox">
<div id="banner"><h1>호출 가능 택시 목록</h1></div>
<table>
  <thead>
  <tr>
    <th style="text-align:center">이름</th>
    <th style="text-align:center">차량번호</th>
    <th style="text-align:center">전화번호</th>
    <th style="text-align:center">차종</th>
    <th style="text-align:center"></th>
  </tr>
  <thead>
  <tbody>
<c:if test="${empty tList}">
  <tr>
    <td colspan="5" style="text-align: center;">현재 운행중인 차량이 없습니다.</td>
  </tr>
</c:if>
<c:if test="${!empty tList}">
    <c:forEach items="${tList}" var="tax">
      <tr>
        <td class="tax-content">${tax.tname}</td>
        <td class="tax-content">${tax.carnum}</td>
        <td class="tax-content">${tax.tphone_num}</td>
        <td class="tax-content">${tax.tcar_kind}</td>
        <td><input type="button" id="tBook-btn" value="호출" onclick="tBook('${tax.tid}')"></td>
      </tr>
    </c:forEach>
</c:if>
  </tbody>
  </thead>
</table>
  <div class="paging"></div>
  <button class="back-btn" onclick="goBack()">뒤로가기</button>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
  //이전 페이지 이동
  function goBack() {
    window.history.back();
  }

  function tBook(tid) {
    console.log(tid);
    alert("택시를 호출하였습니다.")
    window.location.href = "tBookProc?tid=" + tid;
  }
</script>
</html>
