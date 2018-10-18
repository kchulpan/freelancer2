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

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/mainpage/sb-admin.css" rel="stylesheet">
    
</head>
   

  <body class="bg-dark">

    <div class="container">
      <div class="card card-register mx-auto mt-5">
        <div class="card-header">Register an Account</div>
        <div class="card-body">
          <form>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" id="firstName" class="form-control" placeholder="First name" required="required" autofocus="autofocus">
                    <label for="firstName">First name</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" id="lastName" class="form-control" placeholder="Last name" required="required">
                    <label for="lastName">Last name</label>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required">
                <label for="inputEmail">이메일 주소입력</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                    <label for="inputPassword">Password</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm password" required="required">
                    <label for="confirmPassword">Confirm password</label>
                  </div>
                </div>
              </div>
            </div>
            <a class="btn btn-primary btn-block" href="login.html">Register</a>
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="/">Login Page</a>
            <a class="d-block small" href="/Forgot-password">Forgot Password?</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>



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