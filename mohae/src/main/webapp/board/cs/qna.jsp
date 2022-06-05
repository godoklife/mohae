<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="/mohae/css/qna.css" rel="stylesheet">
</head>
<body>
	<!--  해더 영역 -->
	<%@include file="../../header.jsp" %>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<%@include file="cs_sidemenu.jsp"%>
			</div>
			
			<div class="col-md-10">
				<span class="title_middle">나의 문의 내역</span>
				<table class="table table-hover" id="qnatablelist">
					<tr>
						<th>번호</th><th>문의유형</th><th>제목</th><th>작성일자</th>
					</tr>
					<tr>
						<td>3</td><td>교환/환불</td><td>환불,,,,바랍니다...!!!~~!`!</td><td>2022-06-05</td>
					</tr>
					<tr>
						<td>2</td><td>교환/환불</td><td>반품,,,,바랍니다...!!!~~!`!</td><td>2022-06-02</td>
					</tr>
					<tr>
						<td>1</td><td>교환/환불</td><td>교환,,,,바랍니다...!!!~~!`!</td><td>2022-06-01</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	
	<!--  푸터 영역 -->
	<%@include file="../../footer.jsp" %>
	<script type="text/javascript" src="/mohae/js/board/cs/qna.jsp"></script>
</body>
</html>