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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<!-- css -->
	<link rel="stylesheet" href="/css/include/subpage.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- <link rel="stylesheet" type="text/css" href="/css/project/project.css"/> -->
	<!-- js -->
	<script src="js/include/subpage.js"></script>
	<script>
	$(document).ready(function(){
		$('#project').addClass('top_menu_active');
		$('#project').find('i').addClass('menu_icon_active');
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
    td = tr[i].getElementsByTagName("td")[2];
    if (td) {
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
      <div id="content-wrapper">
    <!-- 테이블내용 시작 -->
    	<div class="card mb-3">
    		<div class="card-header">
    			<i class="fas fa-fw fa-users"></i>
    			프로젝트 조회/관리
    		</div>
    		<div class="card-body">
    			<div class="table-responsive">
    				<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
    					<div class="row">
    						<div class="col-sm-12 col-md-12">
    							<div class="dataTables_length" id="dataTable_length">
    								<label>
    									데이터
    									<select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
    										<option value="5">5</option>
    										<option value="10">10</option>
    										<option value="15">15</option>
    										<option value="20">20</option>
    									</select>
    									개씩보기
    								</label>
    							</div>
    						</div>
    						<div class="col-sm-12 col-md-12">    						
	    						<div id="dataTable_filter" class="dataTables_filter">
	    							<label>고객사:
	    								<input type="text" class="form-control form-control-sm" placeholder="고객사를 입력하세요" aria-controls="dataTable" id="myInput" onkeyup="myFunction()">
	    							</label>
	    							<label>프로젝트명:
	    								<input type="text" class="form-control form-control-sm" placeholder="프로젝트명을 입력하세요" aria-controls="dataTable" id="myInput" onkeyup="myFunction()">
	    							</label>
	 								  <a href=""></a><input type="button" onclick="openForm()" value="등록"></a>
	    						</div>
    						</div>
    					</div>
    					<div class="row">
    						<div class="col-sm-12">
    						<table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                  				<thead>
                    				<tr role="row" style="text-align: center">
                    					<th onclick="sortTable(0)""style="width:10px;">순번</th>
                    					<th onclick="sortTable(1)""style="width:30px;">프로젝트명</th>
                    					<th onclick="sortTable(2)""style="width:30px;">프로젝트시작일</th>
                    					<th onclick="sortTable(3)""style="width:30px;">프로젝트종료일</th>
                    					<th onclick="sortTable(4)""style="width:30px;">고객사</th>
                    					<th onclick="sortTable(5)""style="width:30px;">필요기술</th>
                    					<th onclick="sortTable(6)""style="width:30px;">해당분야</th>
                    					<th onclick="sortTable(7)""style="width:10px;">투여인원</th>
                    					<th onclick="sortTable(8)""style="width:30px;">담당자</th>
                    				    <th onclick="sortTable(9)">상세내용</th>
                   				 	</tr>
                  				</thead>
                  				<tfoot>
                    				<tr role="row" style="text-align: center">
					                    <th onclick="sortTable(0)" rowspan="1" colspan="1" "style="width:10px;">순번</th>
					                    <th onclick="sortTable(1)" rowspan="1" colspan="1">프로젝트명</th>
					                    <th onclick="sortTable(2)" rowspan="1" colspan="1">프로젝트시작일</th>
					                    <th onclick="sortTable(3)" rowspan="1" colspan="1">프로젝트종료일</th>
					                    <th onclick="sortTable(4)" rowspan="1" colspan="1">고객사</th>
					                    <th onclick="sortTable(5)" rowspan="1" colspan="1">필요기술</th>
					                    <th onclick="sortTable(6)" rowspan="1" colspan="1">해당분야</th>
					                    <th onclick="sortTable(7)" rowspan="1" colspan="1">투여인원</th>
					                    <th onclick="sortTable(8)" rowspan="1" colspan="1">담당자</th>
					                    <th onclick="sortTable(9)" rowspan="1" colspan="1">상세내용</th>
                    				</tr>
                  				</tfoot>
                  				 <c:forEach var="proj" items="${projectList}"> 
                  				<tbody>
				                  	<tr role="row" class="odd" style="text-align: center">
				     
				                      <td><a href="/Project_p1?proj_id=${proj.proj_id}">${proj.rownum}</a></td>
				                   	  <td><a href="/Project_p1?proj_id=${proj.proj_id}">${proj.proj_nm}</a></td> 
				                      <td><a href="/Project_p1?proj_id=${proj.proj_id}">${proj.proj_str_date}</a></td>
				                      <td><a href="/Project_p1?proj_id=${proj.proj_id}">${proj.proj_end_date}</a></td>
				                      <td><a href="/Project_p1?proj_id=${proj.proj_id}">${proj.client_id}</a></td>
				                      <td><a href="/Project_p1?proj_id=${proj.proj_id}">${proj.need_tech}</a></td>
				                      <td><a href="/Project_p1?proj_id=${proj.proj_id}">${proj.field_1}</a></td>
				                      <td><a href="/Project_p1?proj_id=${proj.proj_id}">${proj.involve_num}</a></td>
				                      <td><a href="/Project_p1?proj_id=${proj.proj_id}">${proj.charge_nm}</a></td>
				                      <td><a href="/Project_p1?proj_id=${proj.proj_id}"><%-- ${proj.remark} --%>상세내용</a></td> 
		                  		</tbody>
		                  		</c:forEach>
                			</table>
              			</div>
           			</div>
         	  </div>
    		</div>			
   		 </div> 			
 	 </div> 	
   </div>
   <!-- 테이블내용 끝 -->
    	
      
  </article>
  
  </div>
  
</div>
</body>

</html>