<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="/mohae/css/board.css" rel="stylesheet">
</head>
<body>
<%@include file="../header1.jsp"%>

<br>
	<div class="container">
	<h3> 자유 게시판 </h3>
		<table class="table table-hover text-center">
			<!-- 테이블 -->
			<tr>
				<th width="10%">번호</th>
				<th width="50%">제목</th>
				<th width="15%">작성자</th>
				<th width="15%">작성일</th>
				<th width="10%">조회수</th>
			</tr>
		</table>
		
	<div class="col-md-2 offset-10">
		<a href="boardwrite.jsp"> <button class="form-control">글쓰기</button> </a>
	</div>
	
	</div>
	
	

	<form action="boardlist.jsp?pagenum=" class="col-md-4 offset-4 d-flex justify-content-center">
			<div class="col-md-3">  <!-- 키 선택  -->
				<select class="form-select" name="key">
					<option value="btitle"> 제목 </option> 	<!-- key = 필드명 -->
					<option value="bcontent"> 내용 </option>
					<option value="mid"> 작성자 </option>
				</select>
			</div>
			<div class="col-md-7"> <!-- 검색 = 키워드 입력창  -->
				<input type="text" class="form-control" name="keyword"> <!-- keyword = 해당 필드의 값 -->
			</div>
			<div class="col-md-2">  <!-- 검색 버튼  -->
				<input type="submit" class="form-control" value="검색">
			</div>
		</form>


</body>
</html>