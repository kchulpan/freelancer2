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
	
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	

	
	<!-- css -->
	<link rel="stylesheet" href="/css/include/subpage.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!-- js -->
	<script src="js/include/subpage.js"></script>
	
	
	<script>
	$(document).ready(function(){
		$('#client').addClass('top_menu_active');
		$('#client').find('i').addClass('menu_icon_active');
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
    <!-- 테이블내용 시작 -->
    	<div class="card mb-3">
    		<div class="card-header">
    			<i class="fas fa-fw fa-users"></i>
    			고객사 관리
    		</div>
    		<div class="card-body">
    			<div class="table-responsive">
    				<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
    					<div class="row">
    						<div class="col-sm-12 col-md-6">
    							<div class="dataTables_length" id="dataTable_length">
    								<label>
    									show
    									<select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
    										<option value="10">10</option>
    										<option value="25">25</option>
    										<option value="50">50</option>
    										<option value="100">100</option>
    									</select>
    									entries
    								</label>
    							</div>
    						</div>
    						<div class="col-sm-12 col-md-6">
    							<div id="dataTable_filter" class="dataTables_filter">
    								<label>Search:
    									<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable">
    								</label>
    							</div>
    						</div>
    					</div>
    					<div class="row"><div class="col-sm-12"><table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                  <thead>
                    <tr role="row">
                    	<th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 45px;">순번</th>
                    	<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 64px;">고객사 아이디</th>
                    	<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 48px;">고객사명</th>
                    	<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">위치</th>
                    	<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 64px;">이력서 양식명</th>
                    	<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 46px;">이력서파일 이름</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
	                    <th rowspan="1" colspan="1">순번</th>
	                    <th rowspan="1" colspan="1">고객사 아이디</th>
	                    <th rowspan="1" colspan="1">고객사명</th>
	                    <th rowspan="1" colspan="1">위치</th>
	                    <th rowspan="1" colspan="1">이력서 양식명</th>
	                    <th rowspan="1" colspan="1">이력서파일 이름</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  	<tr role="row" class="odd">
                      <td class="sorting_1">Airi Satou</td>
                      <td>Accountant</td>
                      <td>Tokyo</td>
                      <td>33</td>
                      <td>2008/11/28</td>
                      <td>$162,700</td>
                    </tr>
                    <tr role="row" class="even">
                      <td class="sorting_1">biri Satou</td>
                      <td>Accountant</td>
                      <td>Tokyo</td>
                      <td>20</td>
                      <td>2008/11/28</td>
                      <td>$162,700</td>
                    </tr>    
                  </tbody>
                </table>
              </div>
           </div>
           <div class="row">
	           	<div class="col-sm-12 col-md-5">
	           		<div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">Showing 1 to 5 of 5 entries</div>
	           	</div>
	           	<div class="col-sm-12 col-md-7">
	           		<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
	           			<ul class="pagination">
	           				<li class="paginate_button page-item previous disabled" id="dataTable_previous">
	           					<a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
	           				</li>
	           				<li class="paginate_button page-item active">
	           					<a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a>
	           				</li>
	           				<li class="paginate_button page-item next disabled" id="dataTable_next">
	           					<a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">Next</a>
	           				</li>
	           			</ul>
	           		</div>
	           	</div>
         	  </div>
    		</div>			
   		 </div> 			
 	 </div>		
   </div>	  
 </div>
<!-- 테이블내용 끝 -->
 <footer class="sticky-footer">
	  <div class="container my-auto">
		   <div class="copyright text-center my-auto">
		      <span>Copyright © FREELANCER 2018</span>
		   </div>
	  </div>
	</footer>
   	<a class="scroll-to-top rounded" href="#page-top" style="display: inline;">
      <i class="fas fa-angle-up"></i>
    </a> 
       
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