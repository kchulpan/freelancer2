<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DDJY University</title>
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
     <h2>담당자 상세페이지</h2>
    	<div>
    		<div>담당자아이디:
    			<input type="text" size=10>
    			<button>중복체크</button>
    		</div>
    		<div>담당자 이름:
   				<input type="text" size=10>
    		</div>
<%--     		<c:forEach var="chrDtl" items="${chargeDetail}">
	    		<div style="clear:both;">
		    		<a href="/Charge_p1?charge_id=${chrDtl.charge_id}">
		 	    		<div class=column>${chrDtl.rownum}</div>
			    		<div class=column>${chrDtl.charge_id}</div>
			    		<div class=column>${chrDtl.charge_nm}</div>
			    		<div class=column>${chrDtl.company_name}</div>
			    		<div class=column>${chrDtl.org_id}</div>
			    		<div class=column>${chr.position_nm}</div>
			    		<div class=column>${chr.charge_phone}</div>
			    		<div class=column>${chr.charge_mail_1}</div>
		    		</a>
	    		</div>
    		</c:forEach> --%>
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