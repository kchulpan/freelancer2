<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">

<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/codingBooster.css">

<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="vendor/bootstrap/js/bootstrap.js"></script>
<title>프리랜서 로그인</title>

</head>
<body>
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">
								<span class="glyphicon glyphicon-tags"></span>
								&nbsp;&nbsp;프리랜서 이력서 등록
							</h3>
						</div>
						<div class="panel-body">
							<div class="media">
								<div class="media-left">
									<a href="#">
										<img class="media-object" src="#" alt="개발자 이미지">
										<img src="img_avatar2.png" alt="Avatar" class="avatar">
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">김대성</h4><br>
									코딩 부스터의 대표 강사입니다.

								</div>
							</div>
						</div>
						<table class="table">
							<thead>
								<tr>
									<th>강사명</th>
									<th>강의번호</th>
									<th>강의제목</th>
									<th>강의날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>김대성</td>
									<td>1</td>
									<td><a href="lecture.html?lectureName=C">c언어 기초 프로그래밍 강좌</a></td>
									<td>2018-09-24</td>
								</tr>
							</tbody>
							<tbody>
								<tr>
									<td>김대성</td>
									<td>2</td>
									<td><a href="lecture.html?lectureName=Java">Java언어 기초 프로그래밍 강좌</a></td>
									<td>2018-09-24</td>
								</tr>
							</tbody>
						</table>
						<div class="panel-footer">
							<blockquote>&nbsp;&nbsp;Do And Forget!</blockquote>
						</div>
					</div>
				</div>
			</div>
		</div>
		

		
		
</body>
</html>