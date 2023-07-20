<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>사용자 로그인</title>
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
    <form action="mLoginProc" method="post" id="login">
        <label for="uid"></label>
        <input type="text" id="uid" name="uid" placeholder="ID">
        <br>
        <br>
        <label for="upwd"></label>
        <input type="password" id="upwd" name="upwd" placeholder="Password">
        <br>
        <br>
        <div>
            <input type="submit" value="사용자 로그인">
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
