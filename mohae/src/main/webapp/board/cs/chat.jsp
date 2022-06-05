<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<table class="table">
					<tr>
						<th></th><th></th><th></th><th></th>
					</tr>
				</table>
			</div>
		</div>
	</div>
	
	<!--  푸터 영역 -->
	<%@include file="../../footer.jsp" %>
</body>
</html>