<%@page import="dto.Member"%>
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
	<%
		if(session.getAttribute("user")==null){
			response.sendRedirect("/mohae/member/login.jsp");	// 로그인 상태가 아니라면 로그인페이지로 보내기
			return;
		}
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<%@include file="cs_sidemenu.jsp"%>
			</div>
			
			<div class="col-md-10">
				<span class="title_middle">나의 문의 내역</span>
				<table class="table table-hover" id="qnatable">
					<!--  qna.js - gettablelist() -->
				</table>
			</div>
		</div>
	</div>
	
	<!--  푸터 영역 -->
	<%@include file="../../footer.jsp" %>
	<script type="text/javascript" src="/mohae/js/board/cs/qna.js"></script>
</body>
</html>