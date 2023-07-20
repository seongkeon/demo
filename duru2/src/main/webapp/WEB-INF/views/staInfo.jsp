<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>관련 시설</title>
</head>
<link rel="stylesheet" href="css/footer.css">
<style>
    @font-face {
        font-family: 'TheJamsil5Bold';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    }
    #sta-bigbox{
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
<div id="sta-bigbox">
<div id="banner"><h1>관련시설</h1></div>
<table  class="rwd-table">
    <tbody>
    <tr>
        <th>시설명</th>
        <th>시설유형</th>
        <th>시설주소</th>
        <th>전화번호</th>
    </tr>

    <tr class="KOTRA-fontsize-80">
        <td>김포시 장애인주간보호센터</td>
        <td>장애인주간보호센터</td>
        <td>경기도 김포시 사우중로 108, 김포보건소 별관 1층</td>
        <td>031-983-4121</td>
    </tr>

    <tr class="KOTRA-fontsize-80">
        <td>김포시 수어통역센터</td>
        <td>수어통역센터</td>
        <td>경기도 김포시 감암로 125(걸포동)</td>
        <td>031-983-9643</td>
    </tr>

    <tr class="KOTRA-fontsize-80">
        <td>인천관역시 발달 장애인 지원 센터</td>
        <td>발달장애 지원센터</td>
        <td>인천광역시 남동구 백범로 357, 한국교직원공제회 인천회관 7층 </td>
        <td>032-715-4363</td>
    </tr>

    <tr class="KOTRA-fontsize-80">
        <td>장애인 기업 종합 지원센터</td>
        <td>장애인 지원센터</td>
        <td>서울특별시 영등포구 버드나루로 14길 25 (당산동,6층)</td>
        <td>1588-6072</td>
    </tr>

    <tr class="KOTRA-fontsize-80">
        <td>서울시 발달장애인 지원 센터</td>
        <td>발달장애 지원 센터</td>
        <td>서울특별시청 04524 서울특별시 중구 세종대로 110</td>
        <td>02-120</td>
    </tr>

    <tr class="KOTRA-fontsize-80">
        <td>서울 시각장애인 복지관</td>
        <td>장애인 복지관</td>
        <td>서울특별시 송파구 삼학사로19길 27(삼전동 109번지)</td>
        <td>02-422-8108</td>
    </tr>

    <tr class="KOTRA-fontsize-80">
        <td>서울 시각장애인 복지관</td>
        <td>장애인 복지관</td>
        <td>서울특별시 송파구 삼학사로19길 27(삼전동 109번지)</td>
        <td>02-422-8108</td>
    </tr>
    </tbody>
</table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
