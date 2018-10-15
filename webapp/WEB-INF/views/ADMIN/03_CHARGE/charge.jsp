<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>담당자관리/조회</title>
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
		$('#charge').addClass('top_menu_active');
		$('#charge').find('i').addClass('menu_icon_active');
	});
	</script>
<!-- 테이블 내용에서 담당자명으로 검색 -->
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
    console.log(rows);
    for (i = 1; i < (rows.length - 2); i++) {

      shouldSwitch = false;
      x = rows[i].getElementsByTagName("A")[n];
      y = rows[i + 1].getElementsByTagName("A")[n];
      //if(x.classList.contains("asc")) dir = "desc";
      
	  //x.classList.toggle("asc");
      console.log(x);
      console.log(y);
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
    	
    <div class=content-wrapper> 
    <!-- 테이블내용 시작 -->
    	<div class="card mb-3">
    		<div class="card-header">
    			<i class="fas fa-fw fa-users"></i>
    			담당자 조회/관리
    		</div>
    		<div class="card-body">
    			<div class="table-responsive">
    				<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
    					<div class="row">	
    						<div class="col-sm-12 col-md-12">
	    						<div id="dataTable_filter" class="dataTables_filter">
    								<label>담당자명:
    									<input type="text" class="form-control form-control-sm" placeholder="담당자명을 입력하세요" aria-controls="dataTable" id="myInput" onkeyup="myFunction()">
    									<a href="/ChargeNewReg"><input type="button" value="등록"></a>
    								</label>
	    						</div>
    						</div>
    					</div>
    					<div class="row">
    						<div class="col-sm-12">
    						<table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                  				<thead>
                    				<tr role="row" style="text-align: center">
                    					<th onclick="sortTable(0)">순번</th>
                    					<th onclick="sortTable(1)">담당자ID</th>
                    					<th onclick="sortTable(2)">담당자명</th>
                    					<th onclick="sortTable(3)">소속사</th>
                    					<th onclick="sortTable(4)">부서</th>
                    					<th onclick="sortTable(5)">직위</th>
                    					<th onclick="sortTable(6)">연락처</th>
                    					<th onclick="sortTable(7)">메일주소</th>
                   				 	</tr>
                  				</thead>
                  				<tfoot>
                    				<tr role="row" style="text-align: center">
					                    <th onclick="sortTable(0)" rowspan="1" colspan="1">순번</th>
					                    <th onclick="sortTable(1)" rowspan="1" colspan="1">담당자ID</th>
					                    <th onclick="sortTable(2)" rowspan="1" colspan="1">담당자명</th>
					                    <th onclick="sortTable(3)" rowspan="1" colspan="1">소속사</th>
					                    <th onclick="sortTable(4)" rowspan="1" colspan="1">부서</th>
					                    <th onclick="sortTable(5)" rowspan="1" colspan="1">직위</th>
					                    <th onclick="sortTable(6)" rowspan="1" colspan="1">연락처</th>
					                    <th onclick="sortTable(7)" rowspan="1" colspan="1">메일주소</th>
                    				</tr>
                  				</tfoot>
				                <tbody>
					                  <c:forEach var="chr" items="${chargeList}" varStatus="status">
					                  	<c:choose>
					                  		<c:when test="${(status.index)%2 eq 1}">
					                  			<tr role="row" class="odd" style="text-align:center">
					                  		</c:when>
					                  		<c:when test="${(status.index)%2 eq 0}">
					                  			<tr role="row" class="even" style="text-align:center">
					                  		</c:when>
					                  	</c:choose>
							                      <td><a href="/Charge_p1?charge_id=${chr.charge_id}&company_id=${chr.company_id}">${chr.rownum}</a></td>
							                      <td><a href="/Charge_p1?charge_id=${chr.charge_id}&company_id=${chr.company_id}">${chr.charge_id}</a></td>
							                      <td><a href="/Charge_p1?charge_id=${chr.charge_id}&company_id=${chr.company_id}">${chr.charge_nm}</a></td>
							                      <td><a href="/Charge_p1?charge_id=${chr.charge_id}&company_id=${chr.company_id}">${chr.company_name}</a></td>
							                      <td><a href="/Charge_p1?charge_id=${chr.charge_id}&company_id=${chr.company_id}">${chr.org_id}</a></td>
							                      <td><a href="/Charge_p1?charge_id=${chr.charge_id}&company_id=${chr.company_id}">${chr.position_nm}</a></td>
							                      <td><a href="/Charge_p1?charge_id=${chr.charge_id}&company_id=${chr.company_id}">${chr.charge_phone}</a></td>
							                      <td><a href="/Charge_p1?charge_id=${chr.charge_id}&company_id=${chr.company_id}">${chr.charge_mail_1}</a></td>
							           
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