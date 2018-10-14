<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DDJY University</title>
<link rel="stylesheet" type="text/css" href="/css/project/project.css"/>
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
        	<h1>프로젝트 조회/관리</h1>
    	<div>
    		<div class="reg2">고객사:
    			<input type="text" size=10>
    					프로젝트명:
    			<input type="text" size=10>
    			<button>조회</button>
    			<button>등록</button>
    		</div>
    		<div class="search" cell-padding="0" cell-spacing="0">
	    		<span class=column>순번</span>
	    		<span class=column>프로젝트명</span>
	    		<span class=column>프로젝트시작일</span>
	    		<span class=column>프로젝트종료일</span>
	    		<span class=column>고객사</span>
	    		<span class=column>필요기술</span>
	    		<span class=column>해당분야</span>
	    		<span class=column>투여인원</span>
	    		<span class=column>담당자</span>
	    		<span class=column>상세내용</span>
    		</div>
    		 <c:forEach var="proj" items="${projectList}"> 
    		<div style="clear:both;">
    		 <a href="/Project_p1?proj_id=${chr.proj_id}">
	    		<span class=column>${proj.rownum}</span>
	    		<span class=column>${proj.proj_nm}</span>
	    		<span class=column>${proj.proj_str_date}</span>
	    		<span class=column>${proj.proj_end_date}</span>
	    		<span class=column>${proj.client_id}</span>
	    		<span class=column>${proj.need_tech}</span>
	    		<span class=column>${proj.field_1}</span>
	    		<span class=column>${proj.involve_num}</span>
	    		<span class=column>${proj.charge_nm}</span>
	    		<span class=column>${proj.remark}</span>
	    	 </a>
    		</div>
    		</c:forEach> 
    	</div>
    
    </div>
      
  </article>
  
  </div>
  
</div>
</body>

</html>