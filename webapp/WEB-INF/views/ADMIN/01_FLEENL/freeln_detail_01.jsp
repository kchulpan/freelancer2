<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DDJY University</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

	<!-- 테이블관련 CSS/JS 시작 -->
	
	<!-- Bootstrap core CSS-->
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
	<link href="css/mainpage/sb-admin.css" rel="stylesheet">
	
	 <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <script src="js/mainpage/sb-admin.min.js"></script>
    <script src="js/demo/datatables-demo.js"></script>
    <script src="js/demo/chart-area-demo.js"></script>
  	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
  	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	
	<!-- 테이블관련 CSS/JS 끝 -->

	<!-- css -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/css/include/freeln_detail_01.css" />
	<link rel="stylesheet" href="/css/include/subpage.css" />
	
	<!-- js -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="js/include/subpage.js"></script>
	<script>
	$(document).ready(function(){
		$('#freeln').addClass('top_menu_active');
		$('#freeln').find('i').addClass('menu_icon_active');
		/* $('.btn-group > button:nth-of-type(1)').focus(); */
	});
	</script>
<script>



</script>
</head>
<!-------------------------------- body ---------------------------------------->
<body>
<div id="wrapper">
<!-- header -->
  <header>
  	<%@ include file="../include/header.jspf" %>
  </header>
  
  <div id="main_templet">
  <div id="slide_btn"></div>
  
<!-- side_menu -->
  <nav class="nav">
  	<%@ include file="../include/nav.jspf" %>
  </nav>

<!-- main -->
  <article>
   	<div class="tabs">
    </div>
    	
    <div class="sections">
    <!-- 내용넣기! -->
      <ul class="breadcrumb">
	    <li class="active">기본정보</li>
	    <li><a href="/FreelnDetail02?freeln_id=${freelancer.freeln_id}">기술정보</a></li>
	    <li><a href="/FreelnDetail03?freeln_id=${freelancer.freeln_id}">경력정보</a></li>
	    <li><a href="/FreelnDetail04?freeln_id=${freelancer.freeln_id}">통화내역</a></li>        
	  </ul>
	  
	  <div id="content-wrapper">
	  <div class="card mb-3">
	 <div class="card-header">
   			<i class="fas fa-fw fa-users"></i>
   			프리랜서 ${freelancer.freeln_nm} 기본정보
     </div>
	 <table class="table table-bordered">
	    <tbody>
	      <tr>
	        <th>이름</th>
	        <td>${freelancer.freeln_nm}</td>
	        <td rowspan="5" id="photo_can"> 
	        	<img src="/img/subpage/${freelancer.freeln_id}.jpg"/>
	        </td>
	      </tr>
	      <tr>
	        <th>아이디</th>
	        <td>${freelancer.freeln_id}</td>      
	      </tr>
	      <tr>
	        <th>핸드폰</th>
	        <td>${freelancer.freeln_phone}</td>      
	      </tr>
	      <tr>
	        <th>자택전화</th>
	        <td>${freelancer.freeln_tel}</td>      
	      </tr>
	      <tr>
	        <th>이메일</th>
	        <td>${freelancer.freen_mail}</td>      
	      </tr>
	      <tr>
	        <th>주소</th>
	        <td colspan="2">${freelancer.freen_addr_1} ${freelancer.freen_addr_2} </td>      
	      </tr>
	      <tr>
	        <th>희망 근무지</th>
	        <td colspan="2">${freelancer.hope_place}</td>      
	      </tr>
	      <tr>
	        <th>희망 단가</th>
	        <td colspan="2">${freelancer.hope_money}</td>      
	      </tr>
	      <tr>
	        <th>투입 가능일</th>
	        <td colspan="2">${freelancer.in_enable_date}</td>      
	      </tr>
	      <tr>
	        <td colspan="3">${freelancer.note}</td>
	      </tr>
	    </tbody>
	  </table>
    </div>
       </div> 	
   </div>
  </article>
  
  </div>
  
</div>
<script>
	/*  $(function(){
		$('nav').on('click','a',function(e){
			//alert('plus clicked');
			 e.preventDefault(); + e.stopPropagation();
		});
	}); */ 
</script>
</body>

</html>