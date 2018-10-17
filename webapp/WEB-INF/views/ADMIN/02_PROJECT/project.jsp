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
	.table-responsive {
		overflow-x:hidden; 
	}

	</style>
	<!-- 테이블 내용에서 프로젝트명으로 검색 -->
<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
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
    			프로젝트 관리
    		</div>
    		<div class="card-body">
    			<div class="table-responsive">
    				<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
    					<div class="row">		
    						<div class="col-sm-12 col-md-11">
	    						<div id="dataTable_filter" class="dataTables_filter">
	    							<label>프로젝트명:
	    								<input type="text" class="form-control form-control-sm" placeholder="프로젝트명을 입력하세요" aria-controls="dataTable" id="myInput" onkeyup="myFunction()">
	    							</label>
	    						</div>
    						</div>
    						<div class="col-sm-12 col-md-1">	
    							<button type="button" class="btn btn-primary btn-sm" id="myBtn" data-toggle="modal" data-target="#inputModal">등록</button>
    							
     							<!-- The Modal 새프로젝트등록-->
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
							        	
							          <form role="form" action="/ProjectNewInsert" method="POST">
							            <div class="form-group">
							              <label for="proj_id">프로젝트 코드</label>
							              <input type="text" class="form-control" id="proj_id" placeholder="자동생성" readonly>
							            </div>
							            <div class="form-group">
							              <label for="proj_nm">프로젝트명</label>
							              <input type="text" class="form-control" id="proj_nm" placeholder="프로젝트 이름을 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="proj_date">프로젝트 기간</label>
							              <div></div><input type="text" class="form-control" id="proj_str_date" style="width:48%; float:left;" placeholder="시작일을 입력하세요">
							              <input type="text" class="form-control" id="proj_end_date" style="width:48%; float:right;" placeholder="종료일을 입력하세요"></div>
							            </div>
							            <div class="form-group">
							              <label for="client_id">고객사</label>
							              <input type="text" class="form-control" id="client_id" placeholder="고객사를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="involve_num">투여인원</label>
							              <input type="text" class="form-control" id="involve_num" placeholder="투여인원을 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="field"> 해당분야</label>
							              	   <div> <select class="form-control" id="field_1" style="width:46%; float:left; margin-left:10px;" placeholder="해당 분야 대분류를 입력하세요">
	    											<option>1</option>
	   											 </select>
							              	    <select class="form-control" id="field_2" style="width:46%; float:right; margin-right:10px;" placeholder="해당 분야 소분류를 입력하세요">
	    											<option>1</option>
	   											 </select></div>
							            </div>
							            <div class="form-group">
											 <label for="note">비고</label>
										    <input type="text" class="form-control" id="note" value=" ${projDtl.note}">
										  </div> 
										  <div class="form-group">
										    <label for="remark"><b>상세내용:</b></label>
										    <textarea class="form-control" id="remark" value=" ${projDtl.remark}"></textarea>
										  </div> 
										    <div class="form-group">
											<label for="need_tech"><b>필요기술:</b></label>
										    <textarea class="form-control" id="need_tech" value=" ${projDtl.need_tech}"></textarea>
										   </div>  
										   <div class="form-group">
											<label for="charge_nm"><b>담당자:</b></label>
										    <select class="form-control" id="charge_nm" value=" ${projDtl.charge_nm}">
										    	<option vlaue="선택">선택</option>
										    	<option vlaue="허태훈">허태훈</option>
										    	<option vlaue="이지완">이지완</option>
										    	<option vlaue="김장현">김장현</option>
										    </select>
										    </div>
										    <div>
							    			<label for="use_yn">사용유무</label>
							   				<input id="use_yn" type="checkbox" name="use_yn" value="Y">
							    		    </div>										    
							            <div class="modal-footer">
							          		<button type="submit" class="btn btn-primary btn-default pull-left" data-dismiss="modal">확인</button>
							          		<button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">취소</button>
							        	</div>   
							          </form>
							        </div>
							        
							      </div>
    						</div>
    					</div> 
    					<!-- The Modal 수정/삭제 -->
								  <!-- Modal -->
  							  <div class="modal fade" id="inputModal2" role="dialog">
							    <div class="modal-dialog" role="document">
							    
							      <!-- Modal content-->
		 					      <div class="modal-content modal-lg">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal"></button>
							          <h5><i class="fa fa-user icon"></i>등록</h5>
							        </div>
							        <div class="modal-body">
							        
							          <form role="form" action="/ProjectNewInsert" method="POST">
							          <c:forEach var="proj2" items="${projectList}">
							            <div class="form-group">
							              <label for="proj_id">프로젝트 코드</label>
							              <input type="text" class="form-control" id="proj_id" placeholder="자동생성" readonly>
							            </div>
							            <div class="form-group">
							              <label for="proj_nm">프로젝트명</label>
							              <input type="text" class="form-control" id="proj_nm" name="proj_nm" value="${proj2.proj_nm}" placeholder="프로젝트 이름을 입력하세요">
							              
							            </div>
							            <div class="form-group">
							              <label for="proj_date">프로젝트 기간</label>
							             <div><input type="text" class="form-control" id="proj_str_date"  name="proj_str_date" value="${proj2.proj_str_date}" style="width:48%; float:left;" placeholder="시작일을 입력하세요">
							              <input type="text" class="form-control" id="proj_end_date" name="proj_end_date" value="${proj2.proj_end_date}" style="width:48%; float:right;" placeholder="종료일을 입력하세요"></div>
							            </div>
							            <div class="form-group">
							              <label for="client_id">고객사</label>
							              <input type="text" class="form-control" id="client_id" name="client_id" value="${proj2.client_id}"placeholder="고객사를 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="involve_num">투여인원</label>
							              <input type="text" class="form-control" id="involve_num" name="involve_num" value="${proj2.involve_num}" placeholder="투여인원을 입력하세요">
							            </div>
							            <div class="form-group">
							              <label for="field"> 해당분야</label>
							              	   <div> <select class="form-control" id="field_1" name="field_1" value="${proj2.field_1}"style="width:46%; float:left; margin-left:10px;" placeholder="해당 분야 대분류를 입력하세요">
	    											<option>1</option>
	   											 </select>
							              	    <select class="form-control" id="field_2" name="field_2" value="${proj2.field_2 }" style="width:46%; float:right; margin-right:10px;" placeholder="해당 분야 소분류를 입력하세요">
	    											<option>1</option>
	   											 </select></div>
							            </div>
							            <div class="form-group">
											 <label for="note">비고</label>
										    <input type="text" class="form-control" id="note" value=" ${proj2.note}">
										  </div> 
										  <div class="form-group">
										    <label for="remark">상세내용</label>
										    <textarea class="form-control" id="remark">${proj2.remark}</textarea>
										  </div> 
										    <div class="form-group">
											<label for="need_tech">필요기술</label>
										    <textarea class="form-control" id="need_tech"  >${proj2.need_tech}</textarea>
										   </div>  
										   <div class="form-group">
											<label for="charge_nm">담당자</label>
										    <select class="form-control" id="charge_nm" name="charge_nm" value=" ${proj2.charge_nm}">
										    	<option name="선택" vlaue="선택">선택</option>
										    	<option name="허태훈" vlaue="허태훈">허태훈</option>
										    	<option name="이지완" vlaue="이지완">이지완</option>
										    	<option name="김장현" vlaue="김장현">김장현</option>
										    </select>
										    </div>
										    <div>
										   		<label for="use_yn">사용유무</label>
							   					<input id="use_yn" type="checkbox" name="use_yn" value="Y">
										    </div>
							            <div class="modal-footer">
							          		<button type="submit" class="btn btn-primary btn-default pull-left" data-dismiss="modal">확인</button>
							          		<button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">취소</button>
							        	</div>   
									 </c:forEach>
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
                    				<tr role="row" style="text-align: center; font-size: 13px;">
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
                    				<tr role="row" style="text-align: center; font-size: 13px;">
					                    <th onclick="sortTable(0)" rowspan="1" colspan="1">순번</th>
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
                  				<tbody>
                  					 <c:forEach var="proj" items="${projectList}" varStatus="status"> 
				                  		<c:choose>
				                  			<c:when test="${(status.index)%2 eq 1}">
					                  	 	<tr role="row" class="odd" style="text-align:center">
					                  		</c:when>
					                  		<c:when test="${(status.index)%2 eq 0}">
					                  			<tr role="row" class="even" style="text-align:center">
					                  		</c:when>
				                  		</c:choose>
				                      <td><a href="#inputModal2" data-toggle="modal">${proj.rownum}</a></td>
				                   	  <td><a href="#inputModal2" data-toggle="modal">${proj.proj_nm}</a></td> 
				                      <td><a href="#inputModal2" data-toggle="modal">${proj.proj_str_date}</a></td>
				                      <td><a href="#inputModal2" data-toggle="modal">${proj.proj_end_date}</a></td>
				                      <td><a href="#inputModal2" data-toggle="modal">${proj.client_id}</a></td>
				                      <td><a href="#inputModal2" data-toggle="modal">${proj.need_tech}</a></td>
				                      <td><a href="#inputModal2" data-toggle="modal">${proj.field_1}</a></td>
				                      <td><a href="#inputModal2" data-toggle="modal">${proj.involve_num}</a></td>
				                      <td><a href="#inputModal2" data-toggle="modal">${proj.charge_nm}</a></td>
				                      <td><a href="#inputModal2" data-toggle="modal">상세내용</a></td> 
				                      <tr>
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