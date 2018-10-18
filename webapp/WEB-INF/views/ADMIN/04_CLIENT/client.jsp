<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <script src="js/mainpage/sb-admin.min.js"></script>
  	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
  	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	
<!-- 테이블관련 CSS/JS 끝 -------------------------------------->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

	<!-- css -->
	<link rel="stylesheet" href="/css/include/subpage.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!-- js -->
	<script src="js/include/subpage.js"></script>

<!-- modal style 시작 -->
	<style>
	.modal-backdrop {
		display: none;

	}
 
	#inputModal, #inputModal2 {
  		top: 15%;
  		margin-top: -50px;
	
	}

	#updateModal {
  		top: 15%;
  		margin-top: -50px;
	}

	 /* modal style 끝 */

 	#client_file {
 		overflow: hidden;
 	}	
	</style>
	
	
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
	      x = rows[i].getElementsByTagName("td")[n];
	      y = rows[i + 1].getElementsByTagName("td")[n];
	      console.log(table);
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
		var client_addr_2 = $(this).find(".client_addr_2").val();
		var client_file_nm = $(this).find(".client_file_nm").html();
		var client_file = $(this).find(".client_file").html();
		alert(client_file);
		console.log(client_id);
		console.log(client_nm);
		console.log(client_addr_1);
		console.log(client_addr_2);
		console.log(client_file_nm);
		console.log(client_file);
		/* var modalData = document.querySelectorAll('tbody a'); */
		//var my_id_value = $(".idClick").eq(0).data("title");
		//var my_id_value2 = $(".idClick").eq(1).data("title1");
		$(".modal-body #cli_id").val(client_id); 
		$(".modal-body #cli_nm").val(client_nm); 
		$(".modal-body #cli_addr_1").val(client_addr_1); 
		$(".modal-body #cli_addr_2").val(client_addr_2); 
		$(".modal-body #cli_file_nm").val(client_file_nm); 
		$(".modal-body #cli_file").val(client_file);
	})
}); 
</script>
<script type="text/javascript">

/* $(document).ready(function(){
	
	$("#client_file").on('change', function(){  // 값이 변경되면
		if(window.FileReader){  // modern browser
			var filename = $(this)[0].files[0].name;
		} else {  // old IE
			var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
		}
		// 추출한 파일명 삽입
		$("#userFile").val(filename);
	});
}); */
</script>
<!-- <script type="text/javascript">

$(document).ready(function(){
	
	$("#cli_file").on('change', function(){  // 값이 변경되면
		if(window.FileReader){  // modern browser
			var filename = $(this)[0].files[0].name;
		} else {  // old IE
			var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
		}
		// 추출한 파일명 삽입
		$("#cli_file").val(filename);
	
	});
});
</script> -->


<!-- <script>
/* 데이터 등록간 취소버튼 누를시 모달 초기화시키기 */
 $(document).ready(function(){
	
		
			$(".modal").on('hidden.bs.modal', function () {
         	alert('The modal is now hidden.');
			
			$(this).find('form')[0].reset();

	
			
		});
 });
 

</script> -->
	<!-- <script type="text/javascript">
	$('#myBtn').on('click','hidden.bs.modal', function (e) {
		var myBtn = document.getElementById("myBtn")
	    console.log('modal close');
	  $(this).find('form')[0].reset()
	});
	</script> -->
<!-- <script>
function fileHidden() {
    document.getElementById("client_file").style.overflow = "hidden";
}
</script> -->	 
	
<script>


$(document).ready(function(){
		$("#updateBtn").click(function () {
	       $("#modalForm").attr("action", "/ClientUpdate");
	       $("#modalForm").submit();
		});
	
		 $("#deleteBtn").click(function () {
	       $("#modalForm").attr("action", "/ClientDelete");
	       $("#modalForm").submit();
		});
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
    	
    <div id="content-wrapper">
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
    						<div class="col-sm-12 col-md-11">
	    						<div id="dataTable_filter" class="dataTables_filter">
	    							<label>Search:
	    								<input type="text" class="form-control form-control-sm" placeholder="고객사를 입력하세요" aria-controls="dataTable" id="myInput" onkeyup="myFunction()">
	    							</label>
	    						</div>
    						</div>
    						<div class="col-sm-12 col-md-1">	
    							<button type="button" class="btn btn-primary btn-sm" id="myBtn" data-toggle="modal" data-target="#inputModal">등록</button>
    							
 <!------------------------------------------------- The Modal1 -------------------------------------------------->
								  <!-- Modal -->
							  <div class="modal fade" id="inputModal" role="dialog">
							    <div class="modal-dialog" role="document">
							    
							    <script>
							    			var changeFile = function(e) {
							    				console.log("asdflhsaldfkjds");
							    				
							    				console.log(e);
							    				console.log(document.getElementById("cli_file"));
							    				//$("#cli_file").val($(this).val());
							    				
							    				document.getElementById("cli_file").value = e.value;
							    			}
							    			
							    		</script>
							      <!-- Modal content-->
							      <div class="modal-content modal-lg">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal"></button>
							          <h5><i class="fa fa-user icon"></i>등록</h5>
							        </div>
							        <div class="modal-body">
							          <form role="form" action="/ClientInsert" method="POST">
							            <div class="form-group">
							              <label for="client_nm">고객사 이름</label>
							              <input type="text" name="client_nm" class="form-control" id="client_nm" placeholder="이름을 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="client_addr_1">고객사 주소</label>
							              <input type="text" name="client_addr_1" class="form-control" id="client_addr_1" placeholder="주소를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="client_addr_2">고객사 상세주소</label>
							              <input type="text" name="client_addr_2" class="form-control" id="client_addr_2" placeholder="상세주소를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="client_file_nm">이력서 양식명</label>
							              <input type="text" name="client_file_nm" class="form-control" id="client_file_nm" placeholder="이력서 양식명을 입력하세요">
							            </div>
							            <div class="form-group" >
							              <label for="client_file"> 이력서 파일명</label>
      										<input type="file" class="form-control-file border" name="client_file" id="client_file" onchange="changeFile(this)"
      										data-class-button="btn btn-default" data-class-input="form-control" data-icon-name="fa fa-upload" class="form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
      										<div class="bootstrap-filestyle input-group">
      											<input type="text" id="cli_file" class="form-control" name="userfile">
													<span class="group-span-filestyle input-group-btn" tabindex="0">
														<label for="client_file" class="btn btn-default ">
															<span class="glyphicon fa fa-upload"></span>	
														</label>
													</span>
      										</div>
							            </div>
							    
							    		
							    
							            <div class="modal-footer">
							          		<button type="submit" class="btn btn-primary btn-default pull-left" >확인</button>
							          		<button type="reset" id="btnClose" class="btn btn-danger btn-default pull-left">초기화</button>
							        	</div>
							          </form>
							        </div>
							        
							      </div>
							      
							    </div>
							  </div>
    						</div>
    					</div>
    					<div class="row">
    						<div class="col-sm-12">
    						<table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                  				<thead>
                    				<tr role="row" style="text-align: center">
                    					<th onclick="sortTable(0)">순번</th>
                    					<th onclick="sortTable(1)">고객사 아이디</th>
                    					<th onclick="sortTable(2)">고객사명</th>
                    					<th onclick="sortTable(3)">위치</th>
                    					<th onclick="sortTable(4)">이력서 양식명</th>
                    					<th onclick="sortTable(5)">이력서 파일명</th>
                   				 	</tr>
                  				</thead>
                  				<tfoot>
                    				<tr role="row" style="text-align: center">
					                    <th onclick="sortTable(0)" rowspan="1" colspan="1">순번</th>
					                    <th onclick="sortTable(1)" rowspan="1" colspan="1">고객사 아이디</th>
					                    <th onclick="sortTable(2)" rowspan="1" colspan="1">고객사명</th>
					                    <th onclick="sortTable(3)" rowspan="1" colspan="1">위치</th>
					                    <th onclick="sortTable(4)" rowspan="1" colspan="1">이력서 양식명</th>
					                    <th onclick="sortTable(5)" rowspan="1" colspan="1">이력서 파일명</th>
                    				</tr>
                  				</tfoot>
                  				<tbody> 	
                  				<c:forEach var="client" items="${clientList}" varStatus="status">
				                     <tr class="rowClick" role="row" style="text-align:center"> 
				                      <td>${client.rownum}</td>
				                      <td><input type="hidden" class="client_addr_2" data-target="#inputModal2" value="${client.client_addr_2}">
				                      <a href="#" data-toggle="modal" class="idClick client_id" data-target="#inputModal2">${client.client_id}</a></td>
				                      <td><a href="#" data-toggle="modal" class="idClick client_nm" data-target="#inputModal2">${client.client_nm}</a></td>
				                      <td class="idClick client_addr_1"  data-target="#inputModal2">${client.client_addr_1}</td>
				                      <td class="idClick client_file_nm" data-target="#inputModal2">${client.client_file_nm}</td>
				                      <td class="idClick client_file" data-target="#inputModal2">${client.client_file}</td> 	
				                    </tr>
				                </c:forEach>
		                  		</tbody>
                			</table>
                			
                				<!-- The Modal2 데이터 수정 모달 -->
<!----------------------------------------------- Modal2 ------------------------------------------------------>
							  <div class="modal fade" id="inputModal2" role="dialog">
							    <div class="modal-dialog" role="document">
							      <!-- Modal content2-->
							      <div class="modal-content modal-lg">
							        <div class="modal-header">
							          <button type="button" class="close"></button>
							          <h5><i class="fa fa-user icon"></i>수정/삭제</h5>
							        </div>
							        <div class="modal-body" >	
									<form id="modalForm" method="POST" role="form">
							            <div class="form-group">
							              <label for="cli_id">고객사 아이디</label>
							              <input type="text" id="cli_id" name="client_id" class="form-control" readonly="readonly">
							            </div>
							            <div class="form-group">
							              <label for="cli_nm">고객사 이름</label>
							              <input type="text" name="client_nm" class="form-control" id="cli_nm">
							            </div>
							            <div class="form-group">
							              <label for="cli_addr_1">고객사 주소</label>
							              <input type="text" name="client_addr_1" class="form-control" id="cli_addr_1">
							            </div>
							            <div class="form-group">
							              <label for="cli_addr_2">고객사 상세주소</label>
							              <input type="text" name="client_addr_2" class="form-control" id="cli_addr_2">
							            </div>
							            <div class="form-group">
							              <label for="cli_file_nm">이력서 양식명</label>
							              <input type="text" name="client_file_nm" class="form-control" id="cli_file_nm">
							            </div>
							            <!-- <div class="form-group">
							              <label for="userFile"> 이력서 파일명</label>
							              <div class="bootstrap-filestyle input-group">
							              <input type="text"class="form-control" id="userFile">
							              
      									  <input type="file" class="form-control-file border"  name="client_file" id="cli_file">
      									  <input type="file" class="form-control-file border"  name="client_file" id="cli_file" data-class-button="btn btn-default" 
      											data-class-input="form-control" data-icon-name="fa fa-upload" class="form-control" 
      											tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
      											<span class="group-span-filestyle input-group-btn" tabindex="0">
														<label for="cli_file" class="btn btn-default ">
															<span class="glyphicon fa fa-upload"></span>	
														</label>
												</span>
      									  </div>	 -->
      											
													
      										
							            </div>
							            <div class="modal-footer">
							          		<input type="button" id="updateBtn"  value="수정" class="btn btn-primary btn-default pull-left">
							          		<input type="button" id="deleteBtn"  value="삭제" class="btn btn-danger btn-default pull-left">
							          		
							        	</div>   
							          </form>
							        </div>
							      </div>
							</div>
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