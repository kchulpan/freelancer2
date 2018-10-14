<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
body{padding:260px;}
  

 .font{
    font-size:10;
	margin: 0 auto;
	margin-bottom:15px;
	width:fit-content;
 }

  .userid{
      width:300px;
      height:30px;
     
   }

   
   
   .password{
   width:300px;
      height:30px;
      
}
   
   
   .login{
    width:300px;
    margin:0 auto;
      height:30px;
   display: block; 
   }
   
   
   .register{
		margin: 0 auto;
      width:300px;
	  display:flex;
	  justify-content:center;
	  
   
   }
   
   .register div{
      margin-right:5px;
	 
   }
   
   .font2{
      font-size:15px;
      
   }
   

   #wrap{
   
   
     position:absolute;
	 top:38%;
     left:50%;

	 transform:translate(-50%,-50%);
   
   }
   
   
   img{
      width:800px;
	  height:500px;
	  filter:blur(0.6);
     
   
   
   }
   
</style>


<title>일정관리</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   
 
</head>
   

<body>
  
  <div id="wrap">
  <p><img src="/img/mainpage/school4.jpg"/></p>
  
  <div style="text-align:center">
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
  
  </div>
  
 
 </div>
 
</body>
</html>