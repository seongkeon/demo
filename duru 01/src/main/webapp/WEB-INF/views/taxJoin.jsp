<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
  <title>택시 사업자 회원가입</title>
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
    margin: 30px;
  }

  .textForm {
    border-bottom: 2px solid #adadad;
    margin: 30px;
    padding: 10px 10px;

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

  .name {
    width: 100%;
    border:none;
    outline:none;
    color: #636e72;
    font-size:16px;
    height:25px;
    background: none;
  }

  .buscode {
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
    cursor:pointer;
    transition: 0.4s;
    display:inline;
  }
  .back-btn:hover{
    background-color: #4a82d6;
  }
  .btn:hover {
    background-position: right;
  }
  .back-btn:hover {
    background-position: right;
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
    left: 250px;
    top: 720px;
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
    left: 250px;
    top: 750px;
  }
  .w-btn-green{
    background-color: #77af9c;
    color: #d7fff1;
  }
  .w-btn-green:hover{
    background-color: #659485;
  }
  .cartype{
    margin-right:370px;
    width: 200px;
  }
  .carnum{
    width: 100%;
    border:none;
    outline:none;
    color: #636e72;
    font-size:16px;
    height:25px;
    background: none;
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
    top: 280px;
  }
</style>
<body>
<form action="taxJoinProc" method="post" class="joinForm"
      name="tJoinForm" onsubmit="return check() && checkPassword()">

  <h2>택시 회원가입</h2>
  <div class="textForm">
    <input name="tid" id="tid" type="text" title="아이디" class="id" placeholder="아이디">

  </div>
  <div class="textForm">
    <input name="tpwd" type="password" title="비밀번호" class="pw" placeholder="비밀번호">
  </div>
  <div class="textForm">
    <input name="tpwd_confirm" type="password" title="비밀번호 확인" class="pw" placeholder="비밀번호 확인">
  </div>
  <div class="textForm">
    <input name="tcom_name" type="text" title="회사 이름" class="name" placeholder="회사 이름">
  </div>
  <div class="textForm">
    <input name="tname" type="text" title="기사 이름" class="name" placeholder="기사 이름">
  </div>
  <div class="textForm">
    <input name="carnum" type="text" title="차량 번호" class="carnum" placeholder="차량 번호">
  </div>
  <div class="textForm">
    <input name="tphone_num" type="text" title="기사 전화번호" class="phone" placeholder="기사 전화번호">
  </div>
  <div class="textForm">
    <input name="tbus_num" type="text" title="사업자 번호" class="buscode" placeholder="사업자 번호">
  </div>
  <div class="textForm">
    <input type="radio" value="소형" class="rad" title="차종" name="tcar_kind"><label>소형</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="radio" value="중형" class="rad2" title="차종" name="tcar_kind"><label>중형</label>
  </div>
  <input type="submit" class="btn" value="회원가입">
  <input type="submit" class="back-btn" value="뒤로가기" onclick="goBack()">
</form>
<input class="w-btn-id w-btn-green" type="button" value="중복확인" onclick="tIdCheck()">
</body>
<script>
  //이전 페이지 이동
  function goBack() {
    window.history.back();
  }

  //라디오 선택한 값 콘솔에 출력
  // 라디오 버튼 요소들을 가져옵니다.
  var radioButtons = document.getElementsByName("tcar_kind")

  //라디오 버튼 변경 시 이벤트 처리 함수
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
    if (selectedValue === "") {
      console.log("소형");
    } else if(selectedValue === "") {
      console.log("중형")
    }
  }

  // 라디오 버튼들에 이벤틀 리스너를 추가합니다.
  for (var i = 0; i < radioButtons.length; i++) {
    radioButtons[i].addEventListener("change", handleRadioButtonChange);
  }
  /////////////////////////////////////////////////////////////////////

  //비밀번호와 비밀번호 확인 두가지가 같은지 확인하는 메서드
  function checkPassword() {
    const password = document.tJoinForm.tpwd.value;
    const confirmPassword = document.tJoinForm.tpwd_confirm.value;

    if (password !== confirmPassword) {
      alert("비밀번호를 같게 입력해주세요.");
      return false;
    }

    return true;
  }

  //아이디 중복 체크
  let ck = false;

  function tIdCheck(){
    let id = $("#tid").val();
    console.log(id)

    //id값을 입력했는지 검사
    if (id == ""){
      alert("아이디를 입력해주세요.");
      $("#tid").focus();
      return;
    }

    //전송할 데이터 작성
    let sendId = {"tid": id};
    console.log(sendId)

    $.ajax({
      url: "tIdCheck",
      type: "get",
      data: sendId,
      success: function (res){
        if(res == "ok"){
          alert("사용가능한 아이디입니다.");
          ck = true;
        } else{
          alert("이미 존재하는 아이디입니다.");
          $("#tid").val("");
          $("#tid").focus();
          ck = false;
        }
      },
      error: function (err) {
        console.log(err);
        ck = false;
      }
    });
  }//tIdCheck end

  function check(){
    if(ck == false){
      alert("아이디 중복 확인을 해주세요.");
      return false;
    }

    const tjoinfm = document.tJoinForm;
    console.log(tjoinfm);
    let cKindCheck = false; //차종 버튼 클릭 여부

    let length = tjoinfm.length - 1;

    for(let i = 0; i < length; i++){
      if(tjoinfm[i].value == "" || tjoinfm[i].value == null){
        alert(tjoinfm[i].title + "를(을) 입력해주세요.");
        tjoinfm[i].focus();
        return false;
      }
      // 차종 선택 여부확인
      if (tjoinfm[i].type == "radio" && tjoinfm[i].name == "tcar_kind") {
        if (tjoinfm[i].checked) {
          cKindCheck = true;
        }
      }
    }
    console.log(cKindCheck);
    if (!cKindCheck) {
      alert("차종을 선택해주세요.");
      return false;
    }
    return true;
  }
</script>
</html>