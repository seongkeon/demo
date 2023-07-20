<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.7.0.min.js"></script>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="container">
    <img src="images/logo.png" id="logo">
    <form id="login">
        <label for="userid"></label>
        <input type="text" id="userid" name="userid" placeholder="Username">
        <br>
        <br>
        <label for="password"></label>
        <input type="password" id="password" name="password" placeholder="Password">
        <br>
        <br>
        <div>
            <input type="submit" value="택시 사업자 로그인">
        </div>
        <br>
        <div id="login-menu">
            <a href="findId" class="npage">아이디찾기  </a>
            <a href="findPwd" class="npage">비밀번호찾기  </a>
            <a href="joinSelect" class="npage">회원가입</a>
        </div>
    </form>
</div>
</body>
</html>
