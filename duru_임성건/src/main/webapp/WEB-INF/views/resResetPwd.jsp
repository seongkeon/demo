<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>로그인</title>
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
    input[type="password"]{
      width: 200px;
      padding: 10px;
      border: 1px solid gray;
      border-radius: 5px;
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
    #b{
      margin-left: 40px;
      margin-top: 30px;
      padding: 0 auto;
    }
    #a{
      width: 140px;
      height: 120px;
      margin-left: 330px;
    }
    .asdf{
      margin-left: 2px;
      text-decoration-line: none;
      color: inherit;
      font-size: 13px;
    }
    .infolab{
      width: 110px;
      margin-left: 140px;
      float: left;
      font-family: 'TheJamsil5Bold';
      margin-top: 10px;
    }
    .backbtn{
      border: none;
      padding: 15px 30px;
      border-radius: 10px;
      font-family: 'TheJamsil5Bold';
      width:150px;
      background-color: #4999e4;
      color: #fff;
      position: relative;
      top:100px;
    }
    .backbtn:hover{
      background-color: #4a82d6;
    }
    #back{
      margin-left:290px;
      text-decoration-line: none;
    }

  </style>
</head>
<body>
<div class="container">
  <img src="images/logo.png" id="a">
  <form action="resRePw" id="b" method="post">
    <input type="hidden" name="rid" value="${rid}">
    <div class="infolab">새로운 비밀번호</div>
    <input type="password" name="rpwd" id="upwd" required>
    <br>
    <br>
    <div>
      <input type="submit" value="확인" id="confirm">
    </div>
    <br>
    <br>
    <a class="backbtn" id="back" href="resFindPwd">뒤로가기</a>
  </form>
</div>
</body>
</html>