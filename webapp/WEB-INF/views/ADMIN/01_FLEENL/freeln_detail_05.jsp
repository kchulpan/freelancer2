<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DDJY University</title>
<!-- 테이블관련 CSS/JS 시작 --------------------------------->
	
	<!-- Bootstrap core CSS-->
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
	<link href="css/mainpage/sb-admin.css" rel="stylesheet">
	
	 <!-- Bootstrap core JavaScript-->
    <!-- <script src="vendor/jquery/jquery.min.js"></script> -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <script src="js/mainpage/sb-admin.min.js"></script>
  	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- <script src="vendor/bootstrap/js/bootstrap.min.js"></script> -->
  	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	
<!-- 테이블관련 CSS/JS 끝 -------------------------------------->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

	<!-- css -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/css/include/freeln_detail_01.css" />
	<link rel="stylesheet" href="/css/include/subpage.css" />
	
	<!-- js -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="js/include/subpage.js"></script>
	
	<!-- datepicker를 위한 CSS/JS -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- datepicker를 위한 CSS/JS 끝-->

<!-- 통화내역 리스트 스타일 시작 -->
	<style>
	 .call_header {border-top: 1px solid rgba(0,0,0,.125);}
	
	ul{ 
		padding-left: 20px;
	    padding-right: 20px;
	}
	li {list-style-type: none;}
	
	
	#insert_table{
		margin-top:0px;
		background-color:#DDDDDD;
	}
	#insert_table>tbody>tr>th{
		border-color:white;
	}
	#insert_table>tbody>tr>td{
		border-color:white;
	}
	
	.table-bordered {
	    border: 3px solid #ddd;
	}
	</style>
<!-- 통화내역 리스트 스타일 끝 -->

<!-- modal style 시작 -->
	<style>
	.modal-backdrop {
		display: none;

	}
 
	#inputModal, #inputModal2 {
  		top: 20%;
  		margin-top: -50px;
	
	}

	#updateModal {
  		top: 15%;
  		margin-top: -50px;
	}

	</style>
<!-- modal style 끝 -->	
	
	
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
<!-- 기존 리스트를 모달창에 불러오기 -->
<script type="text/javascript">
 $(function () {
	$(".rowClick").click(function (e) {
		var client_id = $(this).find(".client_id").html();
		var client_nm = $(this).find(".client_nm").html();
		var client_addr_1 = $(this).find(".client_addr_1").html();
		var client_file_nm = $(this).find(".client_file_nm").html();
		var client_file = $(this).find(".client_file").html();
		console.log(client_id);
		console.log(client_nm);
		console.log(client_addr_1);
		console.log(client_file_nm);
		console.log(client_file);
		/* var modalData = document.querySelectorAll('tbody a'); */
		//var my_id_value = $(".idClick").eq(0).data("title");
		//var my_id_value2 = $(".idClick").eq(1).data("title1");
		$(".modal-body #cli_id").val(client_id); 
		$(".modal-body #cli_nm").val(client_nm); 
		$(".modal-body #cli_addr1").val(client_addr_1); 
		$(".modal-body #cli_file_nm").val(client_file_nm); 
		$(".modal-body #cli_file").val(client_file); 
	})
}); 
</script>
<!-- <script>
데이터 입력 후 초기화시키기
$('.modal').on('hidden.bs.modal', function (e) {
	console.log('modal close');
	$(this).find('form')[0].reset()
});
</script> -->

<script>
	$(document).ready(function(){
		$('#freeln').addClass('top_menu_active');
		$('#freeln').find('i').addClass('menu_icon_active');
		
		 $( "#datepicker" ).datepicker();
		 $( "#datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd");
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
    
<!--     <div class="sections"> -->
    <ul class="breadcrumb">
	    <li><a href="/FreelnDetail01?freeln_phone=${freelancer.freeln_phone}">기본정보</a></li>
	    <li><a href="/FreelnDetail02?freeln_id=${freelancer.freeln_id}">기술정보</a></li>
	    <li><a href="/FreelnDetail03?freeln_id=${freelancer.freeln_id}">경력정보</a></li>
	    <li class="active">통화내역</li> 
	    <li><a href="/Freeln">목록으로</a></li> 
	  </ul> 
    	
    <div id="content-wrapper">
    <!-- 테이블내용 시작 -->
    	<div class="card mb-3">
    		<div class="card-header">
    			<i class="fas fa-fw fa-users"></i>
    			프리랜서 ${freelancer.freeln_nm} 통화내역
    		</div>
    		<div class="card-body">
    			<div class="table-responsive">
    				<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
    					<div class="row">		
    						<div class="col-sm-12 col-md-11">
	    						<div id="dataTable_filter" class="dataTables_filter">
	    							<label>Search:
	    								<input type="text" class="form-control form-control-sm" placeholder="통화내역을 입력하세요" aria-controls="dataTable" id="myInput" onkeyup="myFunction()">
	    							</label>
	    						</div>
    						</div>
    						<div class="col-sm-12 col-md-1">	
    							<button type="button" class="btn btn-primary btn-sm" id="myBtn" data-toggle="modal" data-target="#inputModal">등록</button>
    							
 <!------------------------------------------------- The Modal1 -------------------------------------------------->
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
		          <form role="form" action="/FreelnDetail04_Call_Insert" method="POST">
		          <input type="hidden" name="freeln_id" value="${freelancer.freeln_id}"/>
		            <div class="form-group">
		              <label for="freeln_nm">프리랜서 이름</label>
		              <input type="text" value="${freelancer.freeln_nm}" class="form-control" id="freeln_nm" readonly/>
		            </div>
		            <div class="form-group">
		              <label for="charge_id">담당자 이름</label>
		              <select name="charge_id" id="charge_id" class="form-control" >
				        <c:forEach var="callChargeList" items="${callChargeList}">
				        	<option value="${callChargeList.charge_id}">${callChargeList.charge_nm}</option>
				        </c:forEach>
				      </select>
		            </div>
		            <div class="form-group">
		              <label for="call_note">통화 내용</label>
		              <textarea name="call_note" class="form-control" id="call_note"></textarea>
		            </div>
		            <div class="form-group">
		              <label for="datepicker">투입가능일</label>
		              <input type="text" name="in_enable_date" class="form-control" id="datepicker">
		            </div>
		            <div class="modal-footer">
		          		<button type="submit" class="btn btn-primary btn-default pull-left" id="">확인</button>
		          		<button class="btn btn-danger btn-default pull-left" data-dismiss="modal">취소</button>
		        	</div>
		          </form>
		        </div>
		        
		      </div>
							      
							    </div>
							  </div>
    						</div>
    					</div>
    					<!-- 통화내역 리스트 시작 -->
    					<div class="row">
    						<div class="col-sm-12">
    						<ul>
     	<c:forEach var="freelancerCall" items="${freelancerCall}">
     	<li>
	     	<table class="table table-bordered">
		    <tbody>
		      <tr>
		        <th>프리랜서</th>
		        <td>${freelancer.freeln_nm}</td>       
		        <th>담당자</th>
		        <td>${freelancerCall.charge_nm}</td>  
		      </tr>
		      <tr>
		        <th>통화내용</th>
		        <td colspan="3">${freelancerCall.call_note}</td>
		      </tr>
		      <tr>
		        <th>투입가능일</th>
		        <td>${freelancerCall.in_enable_date} 이후 가능</td>
		        <th>통화날짜</th>
		        <td>${freelancerCall.call_date}</td>
		      </tr>
		    </tbody>
		  </table>
     	</li>
     	</c:forEach>
     </ul>
     <!-- 통화내역 리스트 끝 -->
                			
                				<!-- The Modal2 데이터 추가 수정 모달 -->
<!----------------------------------------------- Modal2 ------------------------------------------------------>
							  <!-- <div class="modal fade" id="inputModal2" role="dialog">
							    <div class="modal-dialog" role="document">
							      Modal content2
							      <div class="modal-content modal-lg">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal"></button>
							          <h5><i class="fa fa-user icon"></i>수정/삭제</h5>
							        </div>
							        <div class="modal-body" >	
									<form action="/ClientUpdate" method="POST" id="">
							            <div class="form-group">
							              <label for="cli_id">고객사 아이디</label>
							              <input type="text" id="cli_id" name="client_id" class="form-control">
							            </div>
							            <div class="form-group">
							              <label for="cli_nm">고객사 이름</label>
							              <input type="text" name="client_nm" class="form-control" id="cli_nm">
							            </div>
							            <div class="form-group">
							              <label for="cli_addr1">고객사 주소</label>
							              <input type="text" name="client_addr1" class="form-control" id="cli_addr1">
							            </div>
							            <div class="form-group">
							              <label for="cli_addr2">고객사 상세주소</label>
							              <input type="text" name="client_addr2" class="form-control" id="cli_addr2">
							            </div>
							            <div class="form-group">
							              <label for="cli_file_nm">이력서 양식명</label>
							              <input type="text" name="client_file_nm" class="form-control" id="cli_file_nm">
							            </div>
							            <div class="form-group">
							              <label for="cli_file"> 이력서 파일명</label>
							              <input type="file" class="form-control-file border" name="file">
							            </div>
							            <div class="modal-footer">
							          		<button type="submit" class="btn btn-primary btn-default pull-left" data-dismiss="modal">수정</button>
							          		<button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">삭제</button>
							        	</div>   
							          </form>
							        </div>
							      </div>
							</div>
              			</div> -->
           			</div>
         	  </div>
    		</div>			
   		 </div>
 	 </div> 	
   </div>
  </div> 
   <!-- 테이블내용 끝 -->
<!--     </div> 	 -->	 
  </article>
 	  
</div>
</div>
  



</body>

</html>