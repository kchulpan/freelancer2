<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DDJY University</title>
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
<style>
	.column{
		float:left;
		font-size:16px;
	}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<!-- css -->
	<link rel="stylesheet" href="/css/include/subpage.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!-- js -->
	<script src="js/include/subpage.js"></script>
	<script>
	$(document).ready(function(){
		$('#charge').addClass('top_menu_active');
		$('#charge').find('i').addClass('menu_icon_active');
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
       	<div class="card mb-3">
   		<div class="card-header">
   			<i class="fas fa-fw fa-users"></i>
    			담당자 상세보기
    		</div>
    	<div>
    	<form action="/ChargeUpdate" method="GET">
    		<c:forEach var="chrDtl" items="${chargeDetail}">
	    			<input type="hidden" name="company_id" value="${chrDtl.company_id}">
	    		<div>담당자아이디:
	    			<input type="text" size=30 name="charge_id" value="${chrDtl.charge_id}">
	    		
	    			<button>중복체크</button>
	    		</div>
	    		<div>담당자 이름:
	   				<input type="text" size=30 name="charge_nm" value="${chrDtl.charge_nm}">
	    		</div>
	    		<div>소속회사:
	   				<input type="text" size=30 name="company_name" value="${chrDtl.company_name}">
	    		</div>
	    		<div>소속부서:
	   				<input type="text" size=30 name="org_id" value="${chrDtl.org_id}">
	    		</div>
	    		<div>직위:
	   				<input type="text" size=30 name="position_nm" value="${chrDtl.position_nm}">
	    		</div>
	    		<div>연락처:
	   				<input type="text" size=30 name="charge_phone" value="${chrDtl.charge_phone}">
	    		</div>
	    		<div>이메일:
	   				<input type="text" size=30 name="charge_mail_1" value="${chrDtl.charge_mail_1}">
	    		</div>
	    		<div>사용유무:
	   				<input type="checkbox">
	    		</div>
    		</c:forEach>
    		<div align="middle">
	    		<button>확인</button>
    		</div>
    	</form>
    		
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