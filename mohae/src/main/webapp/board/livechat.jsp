<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간 상담원 채팅창</title>
	<link href="/mohae/css/chatting.css" rel="stylesheet">
</head>
<body>
	<% String mid = (String)session.getAttribute("login");%>
	
	<div class="container">
		<div id="contentbox" class="contentbox">
			<!--  chatting.js 에서 내용 출력 -->
		</div>
		<div class="col-sm-10">
			<textarea id="incontent" class="form-control" onkeyup="enterkey('<%=mid%>')" rows="3" cols=""></textarea>
		</div>
		<div class="col-sm-2">
			<button class="sendbtn" onclick="sendbtn('<%=mid%>')">전송</button>
			<button class="sendbtn" onclick="sendbtn('<%=mid%>')">첨부파일</button>
			<%if (mid.equals("admin")){ %>
				<button class="sendbtn" onclick="exportbtn">저장</button>
			<%} %>
		</div>
	</div>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="/mohae/js/chatting.js"></script>
</body>
</html>