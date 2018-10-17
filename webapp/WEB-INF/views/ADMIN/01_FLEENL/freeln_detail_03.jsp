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
		
	});
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
     <ul class="breadcrumb">
	    <li><a href="/FreelnDetail01?freeln_phone=${freelancer.freeln_phone}">기본정보</a></li>
	    <li><a href="/FreelnDetail02?freeln_id=${freelancer.freeln_id}">기술정보</a></li>
	    <li class="active">경력정보</li>
	    <li><a href="/FreelnDetail04?freeln_id=${freelancer.freeln_id}">통화내역</a></li> 
	  </ul> 
    
    <!-- 내용넣기! -->
    <div id="content-wrapper">
    <div class="career_content">
	 <div class="card mb-3">
	 <div class="card-header">
   			<i class="fas fa-fw fa-users"></i>
   			프리랜서 ${freelancer.freeln_nm} 경력정보
     </div> 
	 <table class="table table-bordered">
	    <tbody>
	     <c:forEach var="freelancerCareer" items="${freelancerCareer}">
	      <tr>
	        <th rowspan="2">${freelancerCareer.client_nm}</th>
	        <td>${freelancerCareer.duty} | ${freelancerCareer.task}</td>  
	        <td rowspan="2">icon</td> 
	      </tr>
	      <tr>  
	        <td>${freelancerCareer.work_str_date}~${freelancerCareer.work_end_date} |
	        	${freelancerCareer.client_loca_1} ${freelancerCareer.client_loca_2}</td>     
	      </tr>
	      <tr>
	        <th>세부내용</th>
	        <td colspan="2">${freelancerCareer.contents}</td>
	      </tr>
	     </c:forEach>
	    </tbody>
	  </table>
    </div>
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

