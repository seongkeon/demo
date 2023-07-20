<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>택시 비밀번호 찾기</title>
  <style>
    @font-face {
      font-family: 'TheJamsil5Bold';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    }
    body {
      background-color: white;
    }
    .container {
      width: 800px;
      height: 1000px;
      margin: 0px auto;
      padding: 200px 150px 150px;
      background-color: white;
      border: 0px solid gray;
      border-radius: 0px;
    }
    input[type="text"]{
      width: 200px;
      padding: 10px;
      border: 1px solid gray;
      border-radius: 5px;
      margin-left: px;
    }
    #confirm {
      width: 200px;
      padding: 10px;
      background-color: #4999e4;
      color: #fff;
      border: none;
      border-radius: 3px;
      cursor: pointer;
      margin-left: 250px;
      font-family: 'TheJamsil5Bold';
    }
    #confirm:hover {
      background-color: #4a82d6;
    }
    #a{
      margin-left: 40px;
      margin-top: 30px;
      padding: 0 auto;
    }
    #b{
      width: 140px;
      height: 120px;
      margin-left: 78px
    }
    .asdf{
      margin-left: 2px;
      text-decoration-line: none;
      color: inherit;
      font-size: 13px;
    }
    .infolab{
      width: 80px;
      margin-left: 170px;
      float: left;
      font-family: 'TheJamsil5Bold';
      margin-top: 10px;
    }
    #b{
      margin: 0 auto;
      margin-left: 330px;
    }
    .backbtn{
      border: none;
      padding: 15px 30px;
      border-radius: 10px;
      font-family: 'TheJamsil5Bold';
      width:150px;
      background-color: #4999e4;
      color: #fff;
    }
    .backbtn:hover{
      background-color: #4a82d6;
    }
    #idoutput{
      width: 400px;
      height: 100px;
      font-family: 'TheJamsil5Bold';
      background-color: white;
      margin-top: 70px;
      margin-left:340px;
    }
    #back{
      margin-left:290px;
    }
    #repwd{
      margin-left: 215px;
    }
  </style>
</head>
<body>
<div class="container">
  <img src="images/logo.png" id="b">
  <form action="taxResetPwd" id="a">
    <div class="infolab">&nbsp;&nbsp;&nbsp;아이디</div>
    <input type="text" id="uid" name="tid">
    <br>
    <br>
    <div class="infolab">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이름</div>
    <input type="text" id="username" name="tname">
    <br>
    <br>
    <div class="infolab">전화번호</div>
    <input type="text" id="phone" name="tphone_num">
    <br>
    <br>
    <div>
      <input type="submit" value="확인" id="confirm">
    </div>
    <div id="idoutput"></div>
    <br>
    <div class="button-container">
      <%--      <button class="backbtn" id="repwd">비밀번호 재설정</button>--%>
      <a class="backbtn" id="back" href="taxLogin">뒤로가기</a>
    </div>
  </form>
</div>
</body>
</html>