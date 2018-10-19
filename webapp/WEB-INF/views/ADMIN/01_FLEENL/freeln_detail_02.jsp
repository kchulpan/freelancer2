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
	
	
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/css/include/freeln_detail_01.css" />
	<link rel="stylesheet" href="/css/include/subpage.css" />
	

	
	<!-- css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	<!-- 테이블 내용에서 고객사로 검색 -->
	<script>
	function myFunction() {
	  var input, filter, table, tr, td, i;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("dataTable");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	 
	    if (td = tr[i].getElementsByTagName("td")[1]) {
	      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }      
	  }
	}
	</script>
<!-- 테이블 내용에서 컬럼클릭시 정렬 -->
	<script>
	function sortTable(n) {
	  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
	  table = document.getElementById("dataTable");
	  switching = true;
	  dir = "asc"; 
	  while (switching) {
	    switching = false;
	    rows = table.rows;
	    for (i = 1; i < (rows.length - 1); i++) {
	
	      shouldSwitch = false;
	      x = rows[i].getElementsByTagName("TD")[n];
	      y = rows[i + 1].getElementsByTagName("TD")[n];
	      if (dir == "asc") {
	        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
	          shouldSwitch= true;
	          break;
	        }
	      } else if (dir == "desc") {
	        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
	          shouldSwitch = true;
	          break;
	        }
	      }
	    }
	    if (shouldSwitch) {
	      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
	      switching = true;
	      switchcount ++;      
	    } else {
	      if (switchcount == 0 && dir == "asc") {
	        dir = "desc";
	        switching = true;
	      }
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
	    <li><a href="/FreelnDetail01?freeln_phone=${freelancerTech.freeln_phone}">기본정보</a></li>
	    <li class="active">기술정보</li>
	    <li><a href="/FreelnDetail03?freeln_id=${freelancerTech.freeln_id}">경력정보</a></li>
	    <li><a href="/FreelnDetail04?freeln_id=${freelancerTech.freeln_id}">통화내역</a></li> 
	    <li><a href="/Freeln">목록으로</a></li>        
	  </ul>
	  
	  
     <div id="content-wrapper">
     
     
     
    <!-- 테이블내용 시작 -->
    	<div class="card mb-3">
    		<div class="card-header">
    			<i class="fas fa-fw fa-users"></i>
    			프리랜서 ${freelancerTech.freeln_nm} 기술정보
    		</div>
    		<div class="card-body">
    			<div class="table-responsive">
    				<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
    					<div class="row">
    						
    						<div class="col-sm-12 col-md-12">
	    						<div id="dataTable_filter" class="dataTables_filter">
	    							<label>Search:
	    								<input type="text" class="form-control form-control-sm" placeholder="기술명을 입력하세요" aria-controls="dataTable" id="myInput" onkeyup="myFunction()">
	    							</label>
	    						</div>
    						</div>
    					</div>
    					<div class="row">
    						<div class="col-sm-12">
    						<table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                  				<thead>
                    				<tr role="row" style="text-align: center">
                    					<th onclick="sortTable(0)" width="20%">순번</th>
                    					<th onclick="sortTable(1)">기술명</th>
                   				 	</tr>
                  				</thead>
                  				<tfoot>
                    				<tr role="row" style="text-align: center; display:none;">
					                    <th onclick="sortTable(0)" rowspan="1" colspan="1">순번</th>
					                    <th onclick="sortTable(1)" rowspan="1" colspan="1">기술명</th>
                    				</tr>
                  				</tfoot>
                  				<tbody>
                  				<c:forEach var="free_mjth" items="${arr_major_tech}" varStatus="status">
                  					<c:choose>
                  					<c:when test="${(status.index)%2 eq 1}">
				                  	<tr role="row" class="odd" style="text-align: center">
				                  	</c:when>
                  					<c:when test="${(status.index)%2 eq 0}">
				                  	<tr role="row" class="even" style="text-align: center">
				                  	</c:when>
				                  	</c:choose>
				                      <td>${status.index + 1 }</td>
				                      <td>${free_mjth}</td>
				                    </tr>
				                </c:forEach>
		                  		</tbody>
                			</table>
              			</div>
           			</div>
         	  </div>
    		</div>			
   		 </div> 			
 	 </div> 	
   </div>
   <!-- 테이블내용 끝 -->
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