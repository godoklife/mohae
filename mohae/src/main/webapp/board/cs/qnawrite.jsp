<%@page import="dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모해모해 - 1:1문의하기</title>
	<link href="/mohae/css/qnawrite.css" rel="stylesheet">
	<!-- summernote css -->
	<link href="/mohae/css/summernote/summernote-lite.css" rel="stylesheet">
	
</head>
<body>

	<!--  해더 영역 -->
	<%@include file="../../header.jsp" %>
	<%
		if(session.getAttribute("user")==null){
			response.sendRedirect("/mohae/member/login.jsp");	// 로그인 상태가 아니라면 로그인페이지로 보내기
			return;
		}else{
			Member member = (Member)session.getAttribute("user");
			
		}
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<%@include file="cs_sidemenu.jsp"%>
			</div>
			
			<div class="col-md-10">
				<div>
					<span class="title_l">1:1 문의하기</span>
				</div>
				<div class="row">
					<div class="col-md-3">
						<span class="title_m">문의글 작성</span>
					</div>
					<div class="col-md-2 offset-4">
						<a href="/mohae/board/cs/qna.jsp"><button class="btnbasic btncancel">뒤로가기</button></a>
					</div>
					<div class="col-md-2">
						<a href="#"><button class="btnbasic btnconfirm" onclick="submit_qna_write()">작성완료</button></a>
					</div>
				</div>
				<div>
					<input type="text" placeholder="제목을 입력하세요" id="btitle">
				</div>
				<div id="summernote">
					<!--  qnawrite.js ->> summernote() -->
				</div>
			</div>
		</div>
	</div>
	
	<!--  푸터 영역 -->
	<%@include file="../../footer.jsp" %>
	<!-- summernote js -->
	<script src="/mohae/js/summernote/summernote-lite.js"></script>	<!--  언어팩보다 먼저 불러올것 -->
	<script src="/mohae/js/summernote/summernote-ko-KR.js"></script>
	
	
	<script type="text/javascript" src="/mohae/js/board/cs/qnawrite.js"></script>
</body>
</html>