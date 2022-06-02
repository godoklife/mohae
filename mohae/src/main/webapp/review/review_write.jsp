<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/mohae/css/review.css" rel="stylesheet">
</head>
<body>
<%@include file="../header1.jsp"%>

	<div class="container">
		<div class="col-sm-4 offset-4">
			<h3> 리뷰 작성 </h3>
			<h5> 이번 여행이 어떠셨는지 평가해 주세요. </h5>
		</div>
		
		<div class="offset-4">
			<div class="row">
				<div class="col-md-3"> 리더 아이디 </div> <div class="col-md-3"> 날짜</div>
			</div>
			<div> 별점</div>
			<div class="row">
				<div class="col-md-8"> <textarea style="width: 100%;" rows="3" cols="20" placeholder="코멘트를 입력해주세요." ></textarea> </div> 
				<div class="col-md-3"> <button class="form-control"> 전송 </button> </div>
			</div>
		</div>
	</div>
</body>
</html>