<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>관련 사이트</title>
</head>
<link rel="stylesheet" href="css/footer.css">
<style>
  @font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
  }
  #re-bigbox{
    margin-top: 100px;
    margin-bottom: 100px;
  }

  .rwd-table {
    margin: 10px auto 0;
    width: 60%;
    border-collapse: collapse;

  }

  .rwd-table tr:first-child {
    background: #ecf2ff;
    color: black;
  }

  .rwd-table tr {
    border-top: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
    background-color: white;
  }

  /*.rwd-table tr:nth-child(odd):not(:first-child) {*/
  /*    background-color: #ebf3f9;*/
  /*}*/

  .rwd-table th {
    display: none;
  }

  .rwd-table td {
    display: block;
  }

  .rwd-table td:first-child {
    margin-top: .5em;
  }

  .rwd-table td:last-child {
    margin-bottom: .5em;
  }

  .rwd-table td:before {
    /*content: attr(data-th) ": ";*/
    font-weight: bold;
    width: 120px;
    display: inline-block;
    color: #000;
  }

  .rwd-table th,
  .rwd-table td {
    text-align: left;
  }

  .rwd-table {
    color: #333;
    border-radius: .4em;
    overflow: hidden;
  }

  .rwd-table tr {
    border-color: #ecf2ff;
  }

  .rwd-table th,
  .rwd-table td {
    padding: .5em 1em;
  }
  @media screen and (max-width: 601px) {
    .rwd-table tr:nth-child(2) {
      border-top: none;
    }
    .rwd-table th:first-child,
    .rwd-table td:first-child {
      font-weight : bold;
      color: black;
    }
    .rwd-table td a {
      text-decoration: none;
      color: black;
    }
  }
  @media screen and (min-width: 600px) {
    .rwd-table tr:hover:not(:first-child) {
      background-color: rgba(131, 244, 180, 0.3);
      /*background-color: #83F4B4;과 동일 opacity*/
    }
    .rwd-table td:before {
      display: none;
    }
    .rwd-table td a {
      text-decoration: none;
      color: black;
    }
    .rwd-table th,
    .rwd-table td {
      display: table-cell;
      padding: .25em .5em;
    }
    .rwd-table th:first-child,
    .rwd-table td:first-child {
      font-weight : bold;
      padding-left: 0;
    }
    .rwd-table th:last-child,
    .rwd-table td:last-child {
      padding-right: 0;
    }
    .rwd-table th,
    .rwd-table td {
      padding: 1em !important;
    }
  }
  #banner{
    background-color: #4999e4;
    width: 60%;
    height: 60px;
    display: flex;
    align-items: center;
    border-radius: 15px;
    margin: 0 auto;
  }
  #banner h1 {
    margin-left: 20px;
  }
  *{
    font-family: 'TheJamsil5Bold';
  }
</style>
<body>
<header>
  <jsp:include page="headerAfter.jsp"></jsp:include>
</header>
<div id="re-bigbox">
<div id="banner"><h1>관련사이트</h1></div>
<table  class="rwd-table">
  <tbody>
  <tr>
    <th>사이트 이름</th>
    <th>목적</th>
    <th>사이트 링크</th>
  </tr>
  <tr class="KOTRA-fontsize-80">
    <td>한국장애인고용공단</td>
    <td>일자리, 고용</td>
    <td>http://www.kead.or.kr/</td>
  </tr>
  <tr class="KOTRA-fontsize-80">
    <td>한국지체장애인협회</td>
    <td>복지</td>
    <td>http://www.kappd.or.kr/kappd/</td>
  </tr>
  <tr class="KOTRA-fontsize-80">
    <td>보건복지부(복지로)</td>
    <td>복지</td>
    <td>https://www.bokjiro.go.kr/ssis-tbu/index.dotd>
  </tr>
  <tr class="KOTRA-fontsize-80">
    <td>서울시 장애인 홈페이지</td>
    <td>복지</td>
    <td>https://wis.seoul.go.kr/main.do</td>
  </tr>
  <tr class="KOTRA-fontsize-80">
    <td>한국장애인 직업재활시설협회</td>
    <td>복지, 일자리</td>
    <td>http://www.kavrd.or.kr/kavrd/</td>
  </tr>
  <tr class="KOTRA-fontsize-80">
    <td>한국 신체 장애인 복지회</td>
    <td>복지</td>
    <td>http://www.kdwa.or.kr/</td>
  </tr>
  </tbody>
</table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
