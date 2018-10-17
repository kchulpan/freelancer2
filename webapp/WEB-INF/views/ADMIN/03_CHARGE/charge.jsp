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
 
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <script src="js/mainpage/sb-admin.min.js"></script>
 
 
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
	
	
	<!-- modal -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" /> -->
	
<!-- 	<script>
	$(document).ready(function(){
		$('#charge').addClass('top_menu_active');
		$('#charge').find('i').addClass('menu_icon_active');
	});
	</script> -->
<!-- modal style 시작 -->	
<style>
	
	
 	.modal-backdrop {
		display: none;

	}
 
	#inputModal {
  		top: 15%;
  		margin-top: -50px;
  		
  		
  		
	}

	#updateModal {
  		top: 15%;
  		margin-top: -50px;
	}
	
</style>

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
<!-- 기존 리스트를 모달창에 불러오기 -->
<script type="text/javascript">
 $(function () {
	$(".rowClick").click(function (e) {
		var charge_nm = $(this).find(".charge_nm").html();
		var charge_pwd = $(this).find(".charge_pwd").html();
		var company_id = $(this).find(".company_id").val();
		var org_id = $(this).find(".org_id").html();
		var position_nm = $(this).find(".position_nm").html();
		var charge_phone = $(this).find(".charge_phone").html();
		var charge_mail_1 = $(this).find(".charge_mail_1").html();

		console.log(charge_nm);
		console.log(charge_pwd);
		console.log(company_id);
		console.log(org_id);
		console.log(position_nm);
		console.log(charge_phone);
		console.log(charge_mail_1);
		/* var modalData = document.querySelectorAll('tbody a'); */
		//var my_id_value = $(".idClick").eq(0).data("title");
		//var my_id_value2 = $(".idClick").eq(1).data("title1");
		$(".modal-body #charge_nm").val(charge_nm); 
		$(".modal-body #charge_pwd").val(charge_pwd); 
		$(".modal-body #company_id").val(company_id); 
		$(".modal-body #org_id").val(org_id); 
		$(".modal-body #position_nm").val(position_nm); 
		$(".modal-body #charge_phone").val(charge_phone); 
		$(".modal-body #charge_mail_1").val(charge_mail_1); 
	})
}); 
</script>
<!-- <script>
  window.onload = function() 
  {
	  // 대상을 찾는다
	  var charge_a = document.querySelectorAll('tbody a');
	  alert(charge_a);
	  console.log(charge_a);
	  for(var i=0;i<charge_a.length;i++) 
	  {
		  // click 이벤트 연결한다
		  charge_a[i].onclick = function(e) {
 			  e.preventDefault();
			  e.stopPropagation();
			  alert('charge_a.onclick:' + this.href); 
			  $("#charge_nm").html("ajax를 통해 얻어온 id에 해당하는 값");
              $("#company_id").html("ajax를 통해 얻어온 id에 해당하는 값");

              //modal을 띄워준다.  

			  $("#inputModal2").modal('show');

			}
	 };
  }
</script> -->
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
    	
    <div class="content-wrapper"> 
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
    						<div class="col-sm-12 col-md-11">
	    						<div id="dataTable_filter" class="dataTables_filter">
    								<label>담당자명:
    									<input type="text" class="form-control form-control-sm" placeholder="담당자명을 입력하세요" aria-controls="dataTable" id="myInput" onkeyup="myFunction()">
	    							</label>
	    						</div>
    						</div>
    						<div class="col-sm-12 col-md-1">	
    							<button type="button" class="btn btn-primary btn-sm" id="myBtn" data-toggle="modal" data-target="#inputModal">등록</button>

<!-------------------------- The Modal 새담당자등록 ------------------------->
								  <!-- Modal -->
  							  <div class="modal fade" id="inputModal" role="dialog">
							    <div class="modal-dialog" role="document">
							    
							      <!-- Modal content-->
		 					      <div class="modal-content modal-lg">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal"></button>
							          <h5><i class="fa fa-user icon"></i>등록</h5>
							        </div>
							        <div class="modal-body">
							        	 
							          <form role="form" action="/ChargeNewInsert" method="POST">
							            <div class="form-group">
							              <label for="charge_nm">담당자명</label>
							              <input type="text" class="form-control" id="charge_nm" name="charge_nm" placeholder="담당자명을 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="charge_pwd">비밀번호</label>
							              <input type="text" class="form-control" id="charge_pwd" name="charge_pwd" placeholder="비밀번호를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="company_name">회사코드</label>
							              <input type="text" class="form-control" id="company_id" name="company_id" placeholder="예) COMP0000">
							            </div>
							            <div class="form-group">
							              <label for="org_id">부서</label>
							              <input type="text" class="form-control" id="org_id" name="org_id" placeholder="부서를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="position_nm">직위</label>
							              <input type="text" class="form-control" id="position_nm" name="position_nm" placeholder="직위를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="charge_phone">연락처</label>
							              <input type="text" class="form-control" id="charge_phone" name="charge_phone" placeholder="예) 010-1111-2222">
							            </div>
							            <div class="form-group">
							              <label for="charge_mail_1">이메일</label>
							              <input type="text" class="form-control" id="charge_mail_1" name="charge_mail_1" placeholder="이메일을 입력하세요">
							            </div>
							    		<div>
							    			<label for="use_yn">사용유무</label>
							   				<input id="use_yn" type="checkbox" name="use_yn" value="Y">
							    		</div>
							            <div class="modal-footer">
							          		<button class="btn btn-primary btn-default pull-left" >확인</button>
							          		<button type="" class="btn btn-danger btn-default pull-left" data-dismiss="modal">취소</button>
							        	</div>   
							          </form>
							        </div>
							        
							      </div>
							      
							    </div>
							  </div>
<!-------------------------- The Modal 새담당자등록 ------------------------->

<!-------------------------- The Modal 수정/삭제 ---------------------------->
								  <!-- Modal -->
  							  <div class="modal fade" id="inputModal2" role="dialog">
							    <div class="modal-dialog" role="document">
							    
							      <!-- Modal content-->
		 					      <div class="modal-content modal-lg">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal"></button>
							          <h5><i class="fa fa-user icon"></i>수정/삭제</h5>
							        </div>
							        <div class="modal-body">
							        	 
							          <form role="form" action="/ChargeUpdate" method="POST">
							      		<div class="form-group">
							              <label for="charge_nm">담당자명</label>
							              <input type="text" class="form-control" id="charge_nm" name="charge_nm" placeholder="담당자명을 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="charge_pwd">비밀번호</label>
							              <input type="text" class="form-control" id="charge_pwd" name="charge_pwd" placeholder="비밀번호를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="company_name">회사코드</label>
							              <input type="text" class="form-control" id="company_id" name="company_id" placeholder="예) COMP0000">
							            </div>
							            <div class="form-group">
							              <label for="org_id">부서</label>
							              <input type="text" class="form-control" id="org_id" name="org_id" placeholder="부서를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="position_nm">직위</label>
							              <input type="text" class="form-control" id="position_nm" name="position_nm" placeholder="직위를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="charge_phone">연락처</label>
							              <input type="text" class="form-control" id="charge_phone" name="charge_phone" placeholder="예) 010-1111-2222">
							            </div>
							            <div class="form-group">
							              <label for="charge_mail_1">이메일</label>
							              <input type="text" class="form-control" id="charge_mail_1" name="charge_mail_1" placeholder="이메일을 입력하세요">
							            </div>
							    		<div>
							    			<label for="use_yn">사용유무</label>
							   				<input id="use_yn" type="checkbox" name="use_yn" value="Y">
							    		</div>
							            <div class="modal-footer">
							          		<button class="btn btn-success btn-default pull-left">수정</button>
							          		<button class="btn btn-danger btn-default pull-left">삭제</button>
							          		<button type="" class="btn btn-primary  btn-default pull-left" data-dismiss="modal">취소</button>
							        	</div>   
							          </form>
							        </div>
							        
							      </div>
							      
							    </div>
							  </div>
<!-------------------------- The Modal 수정/삭제 끝---------------------------->
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
					                  		<tr class="rowClick" role="row" style="text-align:center">
					                  			  
							                      <td><input type="hidden" data-toggle="modal" class="idClick company_id" data-target="#inputModal2" data-id="company_id" value="${chr.company_id}">
							                      <a href="#" data-toggle="modal" class="idClick rownum" data-target="#inputModal2" data-id="rownum">${chr.rownum}</a></td>
							                      <td><a href="#" data-toggle="modal" class="idClick charge_id" data-target="#inputModal2" data-id="charge_id">${chr.charge_id}</a></td>
							                      <td><a href="#" data-toggle="modal" class="idClick charge_nm" data-target="#inputModal2" data-id="charge_nm">${chr.charge_nm}</a></td>
							                      <td><a href="#" data-toggle="modal" class="idClick company_name" data-target="#inputModal2" data-id="company_name">${chr.company_name}</a></td>
							                      <td><a href="#" data-toggle="modal" class="idClick org_id" data-target="#inputModal2" data-id="org_id">${chr.org_id}</a></td>
							                      <td><a href="#" data-toggle="modal" class="idClick position_nm" data-target="#inputModal2" data-id="position_nm">${chr.position_nm}</a></td>
							                      <td><a href="#" data-toggle="modal" class="idClick charge_phone" data-target="#inputModal2" data-id="charge_phone">${chr.charge_phone}</a></td>
							                       <td><a href="#" data-toggle="modal" class="idClick charge_mail_1 " data-target="#inputModal2" data-id="charge_mail_1">${chr.charge_mail_1}</a></td>
							                      <%-- <td><a href="/Charge_p1?charge_id=${chr.charge_id}&company_id=${chr.company_id}">${chr.charge_mail_1}</a></td> --%>
							           
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
  </div>
   <!-- 테이블내용 끝 -->   	
  </article>
</div> 
</div>

</body>

</html>