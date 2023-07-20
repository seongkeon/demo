<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <script src="js/jquery-3.7.0.min.js"></script>
  <link rel="stylesheet" href="css/login.css">
  <script>
    $(function(){
      //메시지 출력
      let m = "${msg}";
      if(m != ""){
        alert(m);
      }
    });
  </script>
</head>
<body>
<div class="container">
  <img src="images/logo.png" id="logo">
  <form action="rLoginProc" method="post" id="login">
    <label for="rid"></label>
    <input type="text" id="rid" name="rid" placeholder="ID">
    <br>
    <br>
    <label for="rpwd"></label>
    <input type="password" id="rpwd" name="rpwd" placeholder="Password">
    <br>
    <br>
    <div>
      <input type="submit" value="음식점 사업자 로그인">
    </div>
    <br>
    <div id="login-menu">
      <a href="resFindId" class="npage">아이디찾기  </a>
      <a href="resFindPwd" class="npage">비밀번호찾기  </a>
      <a href="joinSelect" class="npage">회원가입</a>
    </div>
  </form>
</div>
</body>
</html>
