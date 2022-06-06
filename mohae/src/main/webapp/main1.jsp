<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../header1.jsp" %>

	<div class="container">
		<div id="cs" class="carousel slide" data-bs-ride="carousel"
			data-bs-interval="5000">
			<!-- 캐러셀 -->
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#cs" data-bs-slide-to="0"
					class="active"></button>
				<button type="button" data-bs-target="#cs" data-bs-slide-to="1"></button>
			</div>

			<div class="carousel-inner">
				<div class="carousel-item active">
					<!-- 내용 -->
					<img style="width: 100%" alt="" src="img/여행1.jpg">
				</div>
				<div class="carousel-item">
					<!-- 내용 -->
					<img style="width: 100%" alt="" src="img/여행2.jpg">
				</div>
			</div>
			<!-- 캐러셀 이동 버튼 -->
			<a class="carousel-control-prev" data-bs-target="#cs"
				data-bs-slide="prev"> <span class="carousel-control-prev-icon"></span>
			</a>
			<!-- 캐러셀 이동 버튼 -->
			<a class="carousel-control-next" data-bs-target="#cs"
				data-bs-slide="next"> <span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>




</body>
</html>