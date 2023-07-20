<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>사용자 회원가입</title>
    <script src="js/jquery-3.7.0.min.js"></script>
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
<style>
    @font-face {
        font-family: 'TheJamsil5Bold';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    }

    * {
        margin: 0px;
        padding: 0px;
        text-decoration: none;
        font-family: 'TheJamsil5Bold';
    }

    body {
        background-image:#34495e;
    }
    .joinForm {
        position:absolute;
        width:400px;
        height:400px;
        padding: 30px, 20px;
        background-color:#FFFFFF;
        text-align:center;
        top:40%;
        left:50%;
        transform: translate(-50%,-50%);
        border-radius: 15px;
    }

    .joinForm h2 {
        text-align: center;
    }

    .textForm {
        border-bottom: 2px solid #adadad;
        margin: 30px;
        padding: 10px 10px;
    }
    #rgender-btn{
        margin: -5px;
        margin-bottom: 30px;
        padding: 10px 10px;
        width: 320px;
    }


    .id {
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
    }

    .pw {
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
    }
    .pw_confirm{
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
    }
    .name {
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
    }


    .email {
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
    }

    .birth {
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
    }

    .emailcode{
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
    }

    .btn {
        position:relative;
        left:15%;
        transform: translateX(-50%);
        margin-bottom: 40px;
        width:35%;
        height:40px;
        background-color: #4999e4;
        background-position: left;
        background-size: 200%;
        color: white;
        font-weight: bold;
        border:none;
        border-radius: 3px;
        cursor:pointer;
        transition: 0.4s;
        display:inline;
    }
    .btn:hover {
        background-color: #4a82d6;
    }
    .back-btn {
        position:relative;
        left:20%;
        transform: translateX(-50%);
        margin-bottom: 40px;
        width:35%;
        height:40px;
        background-color: #4999e4;
        background-position: left;
        background-size: 200%;
        color:white;
        font-weight: bold;
        border:none;
        border-radius: 3px;
        cursor:pointer;
        transition: 0.4s;
        display:inline;
    }
    .back-btn:hover{
        background-color: #4a82d6;
    }

    .w-btn{
        position: relative;
        border: none;
        display: block;
        padding: 15px 30px;
        border-radius: 15px;
        font-family: 'TheJamsil5Bold';
        text-decoration: none;
        font-weight: 600;
        transition: 0.25s;
        width:150px;
        margin: 0 auto;
        left: 270px;
        top: 740px;
    }
    .w-btn-code{
        position: relative;
        border: none;
        display: block;
        padding: 15px 30px;
        border-radius: 15px;
        font-family: 'TheJamsil5Bold';
        text-decoration: none;
        font-weight: 600;
        transition: 0.25s;
        width:150px;
        margin: 0 auto;
        left: 270px;
        top: 765px;
    }
    .w-btn-green{
        background-color: #77af9c;
        color: #d7fff1;
    }
    .w-btn-green:hover{
        background-color: #659485;
    }
    .gender{
        margin-right:370px;
        width: 200px;
    }
    .phone{
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
    }
    .addr{
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
    }
    .w-btn-id{
        position: relative;
        border: none;
        display: block;
        padding: 15px 30px;
        border-radius: 15px;
        font-family: 'TheJamsil5Bold';
        text-decoration: none;
        font-weight: 600;
        transition: 0.25s;
        width:150px;
        margin: 0 auto;
        left: 270px;
        top: 240px;
    }

</style>
<body>
<form action="userJoinProc" method="post" class="joinForm"
      name = "uJoinForm" onsubmit="return check() && checkPassword()">

    <h2>회원가입</h2>
    <div class="textForm">
        <input name="uid" id="uid" type="text" class="id" title="아이디" placeholder="아이디">

    </div>
    <div class="textForm">
        <input name="upwd" type="password" title="비밀번호" class="pw" placeholder="비밀번호">
    </div>
    <div class="textForm">
        <input name="upwd_confirm" type="password" title="비밀번호 확인"title="" class="pw_confirm" placeholder="비밀번호 확인">
    </div>
    <div class="textForm">
        <input name="uname" type="text" title="이름" class="name" placeholder="이름">
    </div>
    <div class="textForm">
        <input name="ubirth" type="text" title="생년월일" class="birth" placeholder="생년월일">
    </div>
    <div class="textForm">
        <input name="uphone_num" type="text" title="전화번호" class="phone" placeholder="전화번호">
    </div>
    <div class="textForm">
        <input name="uaddr" type="text" title="주소"class="addr" placeholder="주소">
    </div>
    <div class="textForm">
        <input name="uemail" type="text" title="이메일" class="email" placeholder="이메일">
    </div>
    <div id="rgender-btn">
            <input type="radio" value="남성" class="rad" title="성별" name="ugender"><label>남</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" value="여성" class="rad2" title="성별" name="ugender"><label>여</label>
    </div>
    <input type="submit" class="btn" value="회원가입">
    <input type="submit" class="back-btn" value="뒤로가기" onclick="goBack()">
</form>
<input class="w-btn-id w-btn-green" value="중복확인" type="button" onclick="mIdCheck()">
<%--<input class="w-btn w-btn-green" value="인증번호 받기" type="button">--%>
<%--<input class="w-btn-code w-btn-green" value="인증번호 확인" type="button">--%>
</body>
</html>
</body>
<script>
    //이전 페이지 이동
    function goBack() {
        window.history.back();
    }

/////////////////////////////////////////////////////////////
    //라디오 선택한 값 콘솔에 출력
    // 라디오 버튼 요소들을 가져옵니다.
    var radioButtons = document.getElementsByName("ugender");

    // 라디오 버튼 변경 시 이벤트 처리 함수
    function handleRadioButtonChange() {
        // 선택된 라디오 버튼 값을 확인합니다.
        var selectedValue = "";
        for (var i = 0; i < radioButtons.length; i++) {
            if (radioButtons[i].checked) {
                selectedValue = radioButtons[i].value;
                break;
            }
        }

        // 선택된 값을 콘솔에 출력합니다.
        if (selectedValue === "male") {
            console.log("남성");
        } else if (selectedValue === "female") {
            console.log("여성");
        }
    }

    // 라디오 버튼들에 이벤트 리스너를 추가합니다.
    for (var i = 0; i < radioButtons.length; i++) {
        radioButtons[i].addEventListener("change", handleRadioButtonChange);
    }
    /////////////////////////////////////////////////////////////////////

    //비밀번호와 비밀번호 확인 두가지가 같은지 확인하는 메서드
    function checkPassword() {
        const password = document.uJoinForm.upwd.value;
        const confirmPassword = document.uJoinForm.upwd_confirm.value;

        if (password !== confirmPassword) {
            alert("비밀번호를 같게 입력해주세요.");
            return false;
        }

        return true;
    }

    //아이디 중복체크
    let ck = false;
    //false일 경우 중복체크를 안했거나 중복된 아이디를 입력한 상태

    function mIdCheck() {
        let id = $("#uid").val();
        console.log(id)

        //id 값을 입력했는지 검사
        if(id == ""){//입력을 안했을 경우
            alert("아이디를 입력해주세요.");
            $("#uid").focus();
            return;
        }

        //전송할 데이터 작성
        let sendId = {"uid": id};
        console.log(sendId)

        //서버로 id전송
        $.ajax({
            url: "mIdCheck",
            type: "get",
            data: sendId,
            success: function (res){
                if(res == "ok"){
                    alert("사용가능한 아이디입니다.");
                    ck = true;
                } else {
                    alert("이미 존재하는 아이디입니다.");
                    $("#uid").val("");
                    $("#uid").focus();
                    ck = false;
                }
            },
            error: function (err) {
                console.log(err);
                ck = false;
            }
        });
    }//mIdCheck end

    //중복확이이 되었고, 모든 입려깅 된 다음에 전송하도록 하는 함수
    function check(){
        //아이디 중복확인이 되었는가?
        if(ck == false){
            alert("아이디 중복 확인을 해주세요.");
            return false;//submit 중지(전송 안됨)
        }

        //form 태그의 내용 확인(누락된 부분)
        const ujoinfm = document.uJoinForm;//js에서 form태그를 통쨰로 가져오는 방식
        console.log(ujoinfm);
        let genderChecked = false; //성별 버튼 클릭 여부

        let length = ujoinfm.length - 1;//submit 제외

        for(let i = 0; i < length; i++){
            if(ujoinfm[i].value == "" || ujoinfm[i].value == null){
                alert(ujoinfm[i].title + "를(을) 입력해주세요.");
                ujoinfm[i].focus();
                return false;
            }

            // 성별 선택 여부확인
            if (ujoinfm[i].type == "radio" && ujoinfm[i].name == "ugender") {
                if (ujoinfm[i].checked) {
                    genderChecked = true;
                }
            }
        }
        console.log(genderChecked);
        if (!genderChecked) {
            alert("성별을 선택해주세요.");
            return false;
        }
        return true;
    }

</script>
</html>
