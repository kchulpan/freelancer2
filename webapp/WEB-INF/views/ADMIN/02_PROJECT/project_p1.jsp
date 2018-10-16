<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet" type="text/css" href="/css/project/project_p1.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<!-- css -->
	<link rel="stylesheet" href="/css/include/subpage.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!-- js -->
	<script src="js/include/subpage.js"></script>
	<script>
	$(document).ready(function(){
		$('#project').addClass('top_menu_active');
		$('#project').find('i').addClass('menu_icon_active');
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
	 프로젝트 등록 및 수정
   		</div>
   	
    <!-- 내용넣기! -->
    	<div class="code">
    	<form action="/ProjectUpdate" method="GET" >
    		<c:forEach var="projDtl" items="${projectDetail}">	
		   		<input type="hidden" name="charge_id" value="${projDtl.charge_id}" />
	 		<div>프로젝트 코드:
	    		<input type="text" size=30 name="proj_id" value="${projDtl.proj_id}" readonly>
	    	</div>
	    	<div>프로젝트명:
	   			<input type="text" size=30 name="proj_nm" value="${projDtl.proj_nm}">
	    	</div>
	    	<div>프로젝트 기간:
	   			<input type="text" size=15 name="proj_str_date" value="${projDtl.proj_str_date}">~
	   			<input type="text" size=15 name="proj_end_date" value="${projDtl.proj_end_date}"> 	
	    	</div>
	    	<div>고객사:
   				<input type="text" size=30 name="client_id" value="${projDtl.client_id}">
	   		</div>
	    	<div>투여인원:
  				<input type="text" size=30 name="involve_num" value="${projDtl.involve_num}">
	   		</div>
	    	<div>해당분야:
  				<input type="text" size=15 name="field_1" value=" ${projDtl.field_1}">
   				<input type="text" size=15 name="field_2" value=" ${projDtl.field_2}">
	   		</div>
	    	<div>비고:
	   			<input type="text" size=30 name="note" value=" ${projDtl.note}">
	   		</div>
	    	<div>상세내용:
	   			<input type="text" size=30 name="remark" value=" ${projDtl.remark}">
	   		</div>
	    	<div>필요기술:
	   			<input type="text" size=30 name="need_tech" value=" ${projDtl.need_tech}">
	   		</div>
	   		<div>담당자:
  				<input type="text" size=30 name="charge_nm" value=" ${projDtl.charge_nm}">
    		</div>
	   		<div>사용유무:
				<input id="use_yn" type="checkbox" name="use_yn" value="Y">
	   		</div>
	 	<%-- <label for="use_yn"><b>사용유무:</b></label>
	    <input type="checkbox"  name="use_yn"  value="${projDtl.use_yn}" checked/>
		<br>
		<br>
	    <label for="proj_code"><b>프로젝트 코드:</b></label>
	    <input type="text" class="input" name="proj_code"  value="${projDtl.proj_code}">
	
	    <label for="proj_nm"><b>프로젝트명:</b></label>
	    <input type="text" class="input" name="proj_nm"  value="${projDtl.proj_nm}">
	    
	    <label for="proj_date"><b>프로젝트 기간:</b></label>
	    <input type="text" class="input" name="proj_str_date" value="${projDtl.proj_str_date}">
	    &nbsp;&nbsp;&nbsp;
	    <input type="text" class="input" name="proj_end_date" value="${projDtl.proj_end_date}">
	    
	    <label for="client_id"><b>고객사:</b></label>
	    <input type="text" class="input"  name="client_id" value="${projDtl.client_id}">
	    
	    <label for="involve_num"><b>투여인원:</b></label>
	    <input type="text" class="input" name="involve_num" value="${projDtl.involve_num}">
	    
	    <label for="field"><b>해당분야:</b></label>
	    <select class="input" name="field_1" value=" ${projDtl.field_1}">
	    
	    	<option>1</option>
	    </select>
	    <select class="input" name="field_2" value=" ${projDtl.field_2}">
	    	<option>2</option>
	    </select>
	    
	    <label for="note"><b>비고:</b></label>
	    <input type="text" class="input" name="note" value=" ${projDtl.note}">
	    
	    <label for="contents"><b>상세내용:</b></label>
	    <textarea class="input" name="contents" value=" ${projDtl.contents}"></textarea>
	
		<label for="need_tech"><b>필요기술:</b></label>
	    <textarea class="input" name="need_tech" value=" ${projDtl.need_tech}"></textarea>
	    
		<label for="charge_nm"><b>담당자:</b></label>
	    <select class="input" name="charge_nm" value=" ${projDtl.charge_nm}">
	    	<option></option>
	    </select> --%>
	
	    <button type="submit" class="btn">확인</button>
	  </c:forEach>
	</form>
	 </div>
	</div>
	
   </div>
      
  </article>
  
  </div>
  
</div>
</body>

</html>