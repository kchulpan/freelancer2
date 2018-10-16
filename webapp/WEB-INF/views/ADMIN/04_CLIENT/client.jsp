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
   
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <script src="js/mainpage/sb-admin.min.js"></script>
    <!-- <script src="js/demo/datatables-demo.js"></script> -->
    
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
    							
    							<!-- The Modal -->
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
							        	
							          <form role="form" action="/ClientInsert" method="POST">
							          
							            <div class="form-group">
							              <label for="client_id">고객사 아이디</label>
							              <input type="text" value="${client_id }" class="form-control" id="client_id" placeholder="아이디를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="client_nm">고객사 이름</label>
							              <input type="text" name="client_nm" class="form-control" id="client_nm" placeholder="이름을 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="client_addr1">고객사 주소</label>
							              <input type="text" name="client_addr1" class="form-control" id="client_addr1" placeholder="주소를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="client_addr2">고객사 상세주소</label>
							              <input type="text" name="client_addr2" class="form-control" id="client_addr2" placeholder="상세주소를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="client_file_nm">이력서 양식명</label>
							              <input type="text" name="client_file_nm" class="form-control" id="client_file_nm" placeholder="이력서 양식명을 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="client_file"> 이력서 파일명</label>
							              <input type="text" name="client_file" class="form-control" id="client_file" placeholder="이력서 파일명을 입력하세요"><br/>
							              <button type="submit" class="btn btn-success">파일찾기</button>
							            </div>
							            <div class="modal-footer">
							          		<button type="submit" class="btn btn-primary btn-default pull-left" data-dismiss="modal" id="">확인</button>
							          		<button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">취소</button>
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
                    					<th onclick="sortTable(5)">이력서파일 이름</th>
                   				 	</tr>
                  				</thead>
                  				<tfoot>
                    				<tr role="row" style="text-align: center">
					                    <th onclick="sortTable(0)" rowspan="1" colspan="1">순번</th>
					                    <th onclick="sortTable(1)" rowspan="1" colspan="1">고객사 아이디</th>
					                    <th onclick="sortTable(2)" rowspan="1" colspan="1">고객사명</th>
					                    <th onclick="sortTable(3)" rowspan="1" colspan="1">위치</th>
					                    <th onclick="sortTable(4)" rowspan="1" colspan="1">이력서 양식명</th>
					                    <th onclick="sortTable(5)" rowspan="1" colspan="1">이력서파일 이름</th>
                    				</tr>
                  				</tfoot>
                  				
                  				<tbody>
                  				<!-- <a href="#" data-target="#input_modal2" data-toggle="modal" class="identifyingClass" data-id="my_id_value" data-title="title"></a> -->
                  				<!-- The Modal2 데이터 추가 수정 모달 -->
								  <!-- Modal2 -->
							  <div class="modal fade" id="inputModal2" role="dialog">
							    <div class="modal-dialog" role="document">
							    
							      <!-- Modal content2-->
							      <div class="modal-content modal-lg">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal"></button>
							          <h5><i class="fa fa-user icon"></i>수정/삭제</h5>
							        </div>
							        <div class="modal-body">
										
										
							            <div class="form-group">
							              <label for="client_id">고객사 아이디</label>
							              <input type="text" id="client_id" name="client_id" class="form-control">
							            </div>
							            <!-- <script>
							            $windows.on("click", ".identifyingClass", function () {
											     var my_id_value = $(this).data(value);
											     $(".modal-body input").val( my_id_value );
								
											});
							            </script> -->

							            <div class="form-group">
							              <label for="client_nm">고객사 이름</label>
							              <input type="text" name="client_nm" class="form-control" id="client_nm">
							            </div>
							            <div class="form-group">
							              <label for="client_addr1">고객사 주소</label>
							              <input type="text" name="client_addr1" class="form-control" id="client_addr1">
							            </div>
							            <div class="form-group">
							              <label for="client_addr2">고객사 상세주소</label>
							              <input type="text" name="client_addr2" class="form-control" id="client_addr2">
							            </div>
							            <div class="form-group">
							              <label for="client_file_nm">이력서 양식명</label>
							              <input type="text" name="client_file_nm" class="form-control" id="client_file_nm">
							            </div>
							            <div class="form-group">
							              <label for="client_file"> 이력서 파일명</label>
							              <input type="text" name="client_file" class="form-control" id="client_file"><br/>
							              <button type="submit" class="btn btn-success">파일찾기</button>
							            </div>
							            <div class="modal-footer">
							          		<button type="submit" class="btn btn-primary btn-default pull-left" data-dismiss="modal">수정</button>
							          		<button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">삭제</button>
							        	</div>
							          		   
							          </form>
							        </div>
							        
							      </div>
							      
							    </div>
							  </div>
                  				 <script type="text/javascript">
										    $(function () {
										        $(".idClick").click(function () {
										        	
										            var my_id_value = $(this).data("title");
										            
										            $(".modal-body input[name=]").val(my_id_value);
										        })
										    });
										    
										    /* <a href="#" data-target="#input_modal" data-toggle="modal" class="identifyingClass" data-id="my_id_value"> */
										</script>
                  				
                  				<c:forEach var="client" items="${clientList}">
				                  	<tr role="row" class="odd" style="text-align: center">
                  				
				                      
				                      <td>${client.rownum}</td>
				                      <td><a href="#inputModal2" data-toggle="modal" data-id="my_id_value" class="idClick" data-whatever="${client.client_id}">${client.client_id}</a></td>
				                      <td class="client_nm">${client.client_nm}</td>
				                      <td class="client_addr" style="overflow:hidden;">${client.client_addr_1}</td>
				                      <td>${client.client_file_nm}</td>
				                      <td>${client.client_file}</td>
				              		   	
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
  



</body>

</html>