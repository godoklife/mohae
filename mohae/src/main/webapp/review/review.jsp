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
		<%for(int i=0 ; i<5 ; i++){ %>
		<div class="review_box row">
			<div class="col-md-6">
				<div class="row">
					<div class="col-sm-3"> <p>ezen0102</p> </div>
					<div class="col-sm-2"> <p>★★★☆☆</p> </div>
					<div class="col-sm-3"> <p>2022-06-02</p> </div>
				</div>
					<div> <p>이번 여행 정말 별로였습니다. 두 번 다시는 이분이랑 가고싶지 않아요..</p> </div>
			</div>
			<div class="col-md-4">
				<div class="col-sm-3 offset-6"> <img alt="" src="/mohae/img/여행1.jpg"> </div>
			</div>
		</div>

		<%} %>
	</div>
</body>
</html>