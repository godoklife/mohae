<%@page import="java.util.TreeSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 사용자 정의 CSS -->
	<link href="/mohae/css/main.css" rel="stylesheet">
</head>
<body>
	<!--  해더 영역 -->
	<%@include file="header.jsp" %>
	<%
		String ipAddress=request.getRemoteAddr();
		if(ipAddress.equalsIgnoreCase("0:0:0:0:0:0:0:1")){
		    InetAddress inetAddress=InetAddress.getLocalHost();
		    ipAddress=inetAddress.getHostAddress();
		}
		session.setAttribute("ip", ipAddress);
		System.out.println("main.jsp 클라이언트IP 주소: "+ipAddress);
	 
	%>
	<!--  메인 상단(달력, 캐러셀) 영역 -->
	
	<div class="bgcolor">
		<div class = "container">
			<div class = "row">
				<div class="col-md-4 menubox">
					<div class="row">
						<p>고객님,<br><strong>어떤 여행을 꿈꾸시나요?</strong></p>
						<div>
							<span onclick="">패키지</span>
							<span onclick="">항공</span>
							<span onclick="">호텔</span>
						</div>
						<div>
							<input type="text" placeholder="어디로 떠나세요?" id="open_local">
							<div class="select_local" id="select_local">	<!-- 어디로 떠나세요? 누르면 나오는 매뉴 -->
					
							</div>
						</div>
						
						<div class="col-md-6">인천김포</div>
						<div class="col-md-6">여행시작일선택</div>
						<div class="col-md-6">항공권은있어요</div>
						<div class="col-md-6">우리끼리만여행할래요</div>
					</div>
				</div>
				<div class="col-md-8">
					<div id="mainslide" class="carousel slide" data-bs-ride="carousel" data-bs-interbal="3000">	<!--  캐러셀 영역 -->
						<div class="carousel-indicators">
						    <button type="button" data-bs-target="#mainslide" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
						    <button type="button" data-bs-target="#mainslide" data-bs-slide-to="1" aria-label="Slide 2"></button>
						    <button type="button" data-bs-target="#mainslide" data-bs-slide-to="2" aria-label="Slide 3"></button>
						    <button type="button" data-bs-target="#mainslide" data-bs-slide-to="3" aria-label="Slide 4"></button>
					  	</div>
						<div class="carousel-inner"><!--  캐러셀 이미지 영역 -->
							<div class="carousel-item active">
								<img src="img/testimg/landscape/testimg_1.jpg">
							</div>
							<div class="carousel-item">
								<img src="img/testimg/landscape/testimg_2.jpg">
							</div>
							<div class="carousel-item">
								<img src="img/testimg/landscape/testimg_3.jpg">
							</div>
							<div class="carousel-item">
								<img src="img/testimg/landscape/testimg_4.jpg">
							</div>
						</div>
						<!-- 이전(왼쪽)버튼 -->
						<button class="carousel-control-prev" type="button" data-bs-target="#mainslide" data-bs-slide="prev">
							<span style="background-color: black;" class="carousel-control-prev-icon"></span>
						</button>
						<!-- 다음(오른쪽)버튼 -->
						<button class="carousel-control-next" type="button" data-bs-target="#mainslide" data-bs-slide="next">
							<span style="background-color: black;" class="carousel-control-next-icon"></span>
						</button>
						
					</div>
				</div>
			</div>	
		</div>	
	</div>	
	<img src="/mohae/img/testimg/portrait/testimg_1.jpg">
	
	<script type="text/javascript" src="/mohae/js/main.js"></script>
	<!--  푸터 영역 -->
	<%@include file="footer.jsp" %>
</body>
</html>