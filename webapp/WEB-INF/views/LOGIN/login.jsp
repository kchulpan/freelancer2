<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

<title>Login</title>
 	<!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/mainpage/sb-admin.css" rel="stylesheet">
    
</head>
   

  <body class="bg-dark">

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login
           <div><img src=""></div> 
        </div>
        <div class="card-body">
          <form>
            <div class="form-group">
              <div>
              	<input type="radio" name="login" id="freelnLog">
              	<label for="freelnLog">프리랜서</label>&nbsp;&nbsp;
              	<input type="radio" name="login" id="chgLog">
              	<label for="chgLog">담당자</label>
              </div>
              <div class="form-label-group">
                <input type="text" id="inputId" class="form-control" placeholder="id" required="required" autofocus="autofocus">
                <label for="inputId">아이디를 입력하세요</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                <label for="inputPassword">비밀번호를 입력하세요</label>
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  비밀번호 저장하기
                </label>
              </div>
            </div>
            <a class="btn btn-primary btn-block" href="/Freelancer">로그인</a>
            <a class="btn btn-primary btn-block" href="/SubPage">임시버튼관리자페이지</a>
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="/Register">회원가입</a>
            <a class="d-block small" href="/Forgot-password">비밀번호를 잊어버리셨나요?</a>
          </div>
        </div>
      </div>
    </div>

   


<%--   <div style="text-align:center">
  <caption><h2>로그인</h2></caption>
  </div>
  <form action="/SubPage" method="GET">
  <div class="font">
   <input type="text" class="userid" id="userid" name="userid" placeholder="아이디 입력"  />  
  </div>
  
  <div class="font">
	<input type="password" class="password" name="password" placeholder="비밀번호 입력" />
  </div>


  <button class="login" >로그인</button>
  </form>
  <form action="/Freelancer" method="GET">
  	<button class="login" >프리랜서페이지로 이동</button>
  </form>


  
  </br>
  <div class="register">
   <div class="font2">아이디 저장<input type="checkbox"></input></div>
  <div class="font2"><a href="">아이디찾기</a>/</div>
  <div class="font2"><a href="">비밀번호 찾기</a></div>
  
  </div> --%>
  
 
</body>
</html>