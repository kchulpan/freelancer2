<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DDJY University</title>
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
    <!-- 내용넣기! -->
    	<!-- <button class="open-button" onclick="openForm()">Open Form</button> -->
	
	<div class="form-popup" id="myForm">
	  <form action="/action_page.php" class="form-container">
	    <h1>프로젝트 등록 및 수정</h1>
	 	<label for="use_yn"><b>사용유무:</b></label>
	    <input type="checkbox"  name="use_yn" checked/>
		<br>
		<br>
	    <label for="proj_code"><b>프로젝트 코드:</b></label>
	    <input type="text" class="input" name="proj_code" required>
	
	    <label for="proj_nm"><b>프로젝트명:</b></label>
	    <input type="text" class="input" name="proj_nm" required>
	    
	    <label for="proj_date"><b>프로젝트 기간:</b></label>
	    <input type="text" class="input" name="proj_str_date" required>
	    &nbsp;&nbsp;&nbsp;
	    <input type="text" class="input" name="proj_end_date" required>
	    
	    <label for="client_id"><b>고객사:</b></label>
	    <input type="text" class="input"  name="client_id" required>
	    
	    <label for="involve_num"><b>투여인원:</b></label>
	    <input type="text" class="input" name="involve_num" required>
	    
	    <label for="field"><b>해당분야:</b></label>
	    <select class="input" name="field_1" required>
	    	<option>1</option>
	    </select>
	    <select class="input" name="field_2" required>
	    	<option>2</option>
	    </select>
	    
	    <label for="note"><b>비고:</b></label>
	    <input type="text" class="input" name="note" required>
	    
	    <label for="contents"><b>상세내용:</b></label>
	    <textarea class="input" name="contents" required></textarea>
	
		<label for="need_tech"><b>필요기술:</b></label>
	    <textarea class="input" name="need_tech" required></textarea>
	    
		<label for="charge_nm"><b>담당자:</b></label>
	    <select class="input" name="charge_nm" required>
	    	<option></option>
	    </select>
	
	    <button type="submit" class="btn">확인</button>
	    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
	  </form>
	</div>
	
	<script>
	function openForm() {
	    document.getElementById("myForm").style.display = "block";
	}
	
	function closeForm() {
	    document.getElementById("myForm").style.display = "none";
	}
	</script>
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