<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>택시 사업자 로그인</title>
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
    <form action="tLoginProc" method="post" id="login">
        <label for="tid"></label>
        <input type="text" id="tid" name="tid" placeholder="ID">
        <br>
        <br>
        <label for="tpwd"></label>
        <input type="password" id="tpwd" name="tpwd" placeholder="Password">
        <br>
        <br>
        <div>
            <input type="submit" value="택시 사업자 로그인">
        </div>
        <br>
        <div id="login-menu">
            <a href="taxFindId" class="npage">아이디찾기  </a>
            <a href="taxFindPwd" class="npage">비밀번호찾기  </a>
            <a href="joinSelect" class="npage">회원가입</a>
        </div>
    </form>
</div>
</body>
</html>
