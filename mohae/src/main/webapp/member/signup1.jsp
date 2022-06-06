<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/mohae/css/login.css" rel="stylesheet"/>
<link href="/mohae/css/signup1.css" rel="stylesheet"/>
</head>
<body>
<%@include file="../header1.jsp"%>

<div class="login-form">
    <form id="signupform" action="../signup" method="post">
        <h2 class="text-center">Sign up</h2>

			<input class="form-control" type="text" id = "mid" placeholder="아이디를 입력하세요"><br>
			<span id = "idcheck"> </span><br>
			<input class="form-control" type="password" id = "mpassword" name = "mid" placeholder="비밀번호를 입력하세요"> <br>
			<input class="form-control" type="password" id = "mpasswordcheck" name = "mpassword" placeholder="비밀번호를 한번 더 입력하세요"><br>
			<span id = "passwordcheck"> </span><br>
			<input class="form-control" type = "text" id = "mnickname" name = "mnickname" placeholder="닉네임을 입력하세요"><br>
			<span id = "nicknamecheck"> </span><br>
			<input class="form-control" type = "text" id = "mname" name = "mname" placeholder="이름을 입력하세요"><br>
			<span id = "namecheck"> </span>
			
			
			<select id="sexselect">
				<option value = "true">남자</option>
				<option value = "false">여자</option>
			</select>


			<input class="form-control" type = "text" id = "mphone" name = "mphone" placeholder = "전화번호를 입력하세요"><br>
			<span id = "phonecheck"> </span><br>
			<input class="form-control" type = "text" id = "memail" name = "memail" placeholder = "이메일주소를 입력하세요">
			@<input class="form-control" type = "text" id = "memailaddress" name = "memailaddress" value = "직접입력">
			<select class="form-control" id = "emailselect">
				<option value = "">직접 입력</option>
				<option value = "hanmir.com">hanmir.com</option>
				<option value = "licos.com">licos.com</option>
				<option value = "hanmail.net">hanmail.net</option>
			</select>
			<br><br>
			<span id = "emailcheck"> </span><br><br>
			주소 
			<!--  다음 우편번호 HTML -->
			<input class="form-control" type="text" id="sample4_postcode" name="maddress1" placeholder="우편번호"readonly>
			<input class="form-control" type="text" id="sample4_roadAddress" name="maddress2" placeholder="도로명주소" readonly>
			<input class="form-control" type="text" id="sample4_jibunAddress" name="maddress3" placeholder="지번주소"readonly>
			<span id="guide" style="color:#999;display:none"></span>
			<input class="form-control" type="text" id="sample4_detailAddress" name="maddress4" placeholder="상세주소">
			<input class="form-control" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			<!--  다음 우편번호 HTML 끝-->
			<span id = "addresscheck"></span><br>
			
			<div class="form-group">
				<button onclick="signup()" type="button" class="btn btn-dark btn-block login-btn">Sign up</button>
				<button onclick="location.href='../main1.jsp'" type="button" class="btn btn-dark btn-block login-btn">Back</button>
			</div>
		</form>
</div>

<!--  푸터 영역 -->
<%@include file="../footer.jsp"%>
<!-- 다음 우편번호 API script -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 다음 우편번호 API script -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!--  signup.js 불러오기 ->> 여기는 상대 경로로 해도 별 문제 없음. -->
<script src="../js/signup.js" type="text/javascript"></script>

</body>
</html>