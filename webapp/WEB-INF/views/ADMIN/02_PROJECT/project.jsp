<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DDJY University</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<!-- css -->
	<link rel="stylesheet" href="/css/include/subpage.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/css/project/project.css"/>
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
        	<h1>프로젝트 조회/관리</h1>
    	<div>
    		<div class="reg2">고객사:
    			<input type="text" size=10>
    					프로젝트명:
    			<input type="text" size=10>
	  <td class="btn1"><input type="button" onclick="openForm()" value="조회"></td>
	  <td class="btn1"><input type="button" onclick="openForm()" value="등록"></td>
    		</div>
    		<div class="search" cell-padding="0" cell-spacing="0">
	    		<span class=column1>순번</span>
	    		<span class=column1>프로젝트명</span>
	    		<span class=column1>프로젝트시작일</span>
	    		<span class=column1>프로젝트종료일</span>
	    		<span class=column1>고객사</span>
	    		<span class=column1>필요기술</span>
	    		<span class=column1>해당분야</span>
	    		<span class=column1>투여인원</span>
	    		<span class=column1>담당자</span>
	    		<span class=column1>상세내용</span>
    		</div>
    		 <c:forEach var="proj" items="${projectList}"> 
    		<div style="clear:both;">
    		 <a href="/Project_p1?proj_id=${proj.proj_id}">
	    		<span class=column2>${proj.rownum}</span>
	    		<span class=column2>${proj.proj_nm}</span>
	    		<span class=column2>${proj.proj_str_date}</span>
	    		<span class=column2>${proj.proj_end_date}</span>
	    		<span class=column2>${proj.client_id}</span>
	    		<span class=column2>${proj.need_tech}</span>
	    		<span class=column2>${proj.field_1}</span>
	    		<span class=column2>${proj.involve_num}</span>
	    		<span class=column2>${proj.charge_nm}</span>
	    		<span class=column2>${proj.remark}</span>
	    	 </a>
    		</div>
    		</c:forEach> 
    	</div>
    <div class="form-popup" id="myForm">
  <form action="/action_page.php" class="form-container">
    <h1>공통코드 관리 등록</h1>
 	<label for="used"><b>사용유무:</b></label>
    <input type="checkbox"  name="used" checked/>
	<br>
	<br>
    <label for="groupcode"><b>그룹코드:</b></label>
    <input type="text" class="input" name="groupcode" required>

    <label for="groupname"><b>그룹명:</b></label>
    <input type="text" class="input" name="groupname" required>
    
    <label for="code"><b>코드:</b></label>
    <input type="text" class="input" name="code" required>
    
    <label for="codename"><b>코드명:</b></label>
    <input type="text" class="input"  name="codename" required>
    
    <label for="pricode"><b>상위코드:</b></label>
    <input type="text" class="input" name="pricode" required>
    
    <label for="excode1"><b>예외코드1:</b></label>
    <input type="text" class="input" name="excode1" required>
    
    <label for="excode2"><b>예외코드2:</b></label>
    <input type="text" class="input" name="excode2" required>
    
    <label for="excode3"><b>예외코드3:</b></label>
    <input type="text" class="input" name="excode3" required>

	<label for="seq"><b>순번:</b></label>
    <input type="text" class="input" name="seq" required>
    

    
    <button type="submit" class="btn">확인</button>
<!--     <button type="button" class="btn cancel" onclick="closeForm()">Close</button> -->
  </form>
</div>
    
    </div>
    <script>
	function openForm() {
    document.getElementById("myForm").style.display = "block";
	}

	function closeForm() {
    document.getElementById("myForm").style.display = "none";
	}
</script>
      
  </article>
  
  </div>
  
</div>
</body>

</html>