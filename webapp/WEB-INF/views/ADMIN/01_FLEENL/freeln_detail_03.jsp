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
	
	
	<style>
	ul{ 
		padding-left: 20px;
	    padding-right: 20px;
	  }
	li {list-style-type: none;}
	
	.table-bordered {
	    border: 3px solid #ddd;
	}
	
	.table>tbody>tr>th, .table>tbody>tr>td {border:0;}
	
	.table>tbody>tr>th {vertical-align:middle; width:180px; }
	.table>tbody>tr>.client_nm {font-size:17px; }
	
	
	.table>tbody>tr>.click_detail {
	    width: 100px;
	    text-align: center;
    	vertical-align: middle;
    	border: 1px solid #dee2e6;
	}
	
	.click_detail:hover{
		cursor:pointer;
	}
	.detail_box {
		display: none;
	}
	.detail_box_active{
		display: contents;
	}

	</style>
	
	<script>
	$(document).ready(function(){
		$('#freeln').addClass('top_menu_active');
		$('#freeln').find('i').addClass('menu_icon_active');
		
		$('.click_detail').on('click',function(){
			var this_parent = $(this).parents('tbody');
			var detail_box = $('.detail_box', this_parent);
			if(detail_box.hasClass('detail_box_active')){
				detail_box.removeClass('detail_box_active');
			} else {
				detail_box.addClass('detail_box_active');
			}
		});
		
	});
	</script>
	
	<!-- 테이블 내용에서 고객사로 검색 -->
	<script>
	function myFunction() {
	  var input, filter, ul, li, work_date, client_nm, i;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  ul = $('#content_ul');
	  li = $('li',ul);
	  client_nm = $('.client_nm',li);
	  work_date = $('.work_date',li);
	  freeln_career = $('.freeln_career',li);
	  detail_content = $('.detail_content',li);
	  for (i = 0; i < li.length; i++) {

	      if (work_date.eq(i).html().toUpperCase().indexOf(filter) > -1) {
	       	  li.eq(i).attr('style','display:');
	      } else if(client_nm.eq(i).html().toUpperCase().indexOf(filter) > -1){
	    	  li.eq(i).attr('style','display:');  
	      } else if(freeln_career.eq(i).html().toUpperCase().indexOf(filter) > -1){
	    	  li.eq(i).attr('style','display:');  
	      } else if(detail_content.eq(i).html().toUpperCase().indexOf(filter) > -1){
	    	  li.eq(i).attr('style','display:');  
	      } else {
	       	  li.eq(i).attr('style','display:none');
	      }   
	  }
	}
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
	    <li><a href="/Freeln">목록으로</a></li> 
	  </ul> 
    
    <!-- 내용넣기! -->
    <div id="content-wrapper">
    <div class="career_content">
	 <div class="card mb-3">
	 <div class="card-header">
   			<i class="fas fa-fw fa-users"></i>
   			프리랜서 ${freelancer.freeln_nm} 경력정보
     </div> 
     <div class="card-body">
    			<div class="table-responsive">
    				<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
    					<div class="row">
    						
    						<div class="col-sm-12 col-md-12">
	    						<div id="dataTable_filter" class="dataTables_filter">
	    							<label>Search:
	    								<input type="text" class="form-control form-control-sm" placeholder="찾을 내용을 입력하세요" 
	    										aria-controls="dataTable" id="myInput" onkeyup="myFunction()">
	    							</label>
	    						</div>
    						</div>
    					</div>
    					<div class="row">
    						<div class="col-sm-12">
     <ul id="content_ul">
      <c:forEach var="freelancerCareer" items="${freelancerCareer}">
     	<li>
     		<table class="table table-bordered">
		    <tbody>
		    
		      <tr>
		        <th rowspan="2" class="client_nm">${freelancerCareer.client_nm}</th>
		        <td class="freeln_career">${freelancerCareer.duty} | ${freelancerCareer.task}</td>  
		        <td rowspan="2" class="click_detail">세부내용<br/>보기</td> 
		      </tr>
		      <tr>  
		        <td class="work_date">
		        	${freelancerCareer.work_str_date}~${freelancerCareer.work_end_date} |
		        	${freelancerCareer.client_loca_1} ${freelancerCareer.client_loca_2}</td>     
		      </tr>
		      <tr class="detail_box">
		        <th>세부내용</th>
		        <td colspan="2" class="detail_content">${freelancerCareer.contents}</td>
		      </tr>
		    </tbody>
		  </table>
     	</li>
		     </c:forEach>
     </ul>
	 </div>
           			</div>
         	  </div>
    		</div>			
   		 </div> 			
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

