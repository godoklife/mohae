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
				<div class="col-md-4">
					<div>고객님,<br>너떤 여행을 꿈꾸시나요?</div>
					<div> </div>
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
				
				<div class="row adbox">	<!--  광고 영역 -->
					<div class="col-md-6">	<!--  traning -->
						<img src="img/productimg/xiaomi/redmi_k50_pro/allcolor.png" width=100%>
					</div>
					<div class="col-md-6">	<!-- 1+n -->
						<img src="img/productimg/xiaomi/redmi_k50_pro/allcolor.png" width=100%>
					</div>
					
				</div>
				<div class="main_box">	<!--  BEST -->
					<h6 class="main_title"> BEST SELLING</h6>
					<div class="row">
						<div class="col-md-3 best_box">
							<img src="img/productimg/xiaomi/12/black.png">
						</div>
						<div class="col-md-3 best_box">
							<img src="img/productimg/xiaomi/12/blue.png">
						</div>
						<div class="col-md-3 best_box">
							<img src="img/productimg/xiaomi/12/green.png">
						</div>
						<div class="col-md-3 best_box">
							<img src="img/productimg/xiaomi/12/pink.png">
						</div>
					</div>
				</div>
				<div class="main_box">	<!--  신상품 -->
					<h6 class="main_title"> NEW ARRIVAL</h6>
					<div class="row">
						<div class="col-md-4 best_box">
							<!--  제품 이미지 클릭시 pno를 가지고 상세페이지로 이동. -->
							<div class="imgbox">
							</div>
							<div class="p_item">
								<!--  제품별 모든 사이즈 가져오기 -->
								
								<div class="p_size">
								
									
								</div>
								<div class="row">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div>	<!-- 실시간 구매 후기 -->
				
				</div>
			</div>	
		</div>
	</div>	
	
	<!--  푸터 영역 -->
	<%@include file="footer.jsp" %>
</body>
</html>