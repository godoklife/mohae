<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/mohae/css/signup1.css" rel="stylesheet"/>
</head>
<body>
<%@include file="../header.jsp"%>

	<div class="container">
		<div class="col-md-6 offset-3">
		<form>
			<div class="row">
				<h4>Account</h4>
				<div class="input-group input-group-icon">
					<input type="text" placeholder="Full Name" />
					<div class="input-icon">
						<i class="fa fa-user"></i>
					</div>
				</div>
				<div class="input-group input-group-icon">
					<input type="email" placeholder="Email Adress" />
					<div class="input-icon">
						<i class="fa fa-envelope"></i>
					</div>
				</div>
				<div class="input-group input-group-icon">
					<input type="password" placeholder="Password" />
					<div class="input-icon">
						<i class="fa fa-key"></i>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-half">
					<h4>Date of Birth</h4>
					<div class="input-group">
						<div class="col-third">
							<input type="text" placeholder="DD" />
						</div>
						<div class="col-third">
							<input type="text" placeholder="MM" />
						</div>
						<div class="col-third">
							<input type="text" placeholder="YYYY" />
						</div>
					</div>
				</div>
				<div class="col-half">
					<h4>Gender</h4>
					<div class="input-group">
						<input id="gender-male" type="radio" name="gender" value="male" />
						<label for="gender-male">Male</label> <input id="gender-female"
							type="radio" name="gender" value="female" /> <label
							for="gender-female">Female</label>
					</div>
				</div>
			</div>
			<div class="row">
				<h4>Payment Details</h4>
				<div class="input-group">
					<input id="payment-method-card" type="radio" name="payment-method"
						value="card" checked="true" /> <label for="payment-method-card"><span><i
							class="fa fa-cc-visa"></i>Credit Card</span></label> <input
						id="payment-method-paypal" type="radio" name="payment-method"
						value="paypal" /> <label for="payment-method-paypal"> <span><i
							class="fa fa-cc-paypal"></i>Paypal</span></label>
				</div>
				<div class="input-group input-group-icon">
					<input type="text" placeholder="Card Number" />
					<div class="input-icon">
						<i class="fa fa-credit-card"></i>
					</div>
				</div>
				<div class="col-half">
					<div class="input-group input-group-icon">
						<input type="text" placeholder="Card CVC" />
						<div class="input-icon">
							<i class="fa fa-user"></i>
						</div>
					</div>
				</div>
				<div class="col-half">
					<div class="input-group">
						<select>
							<option>01 Jan</option>
							<option>02 Jan</option>
						</select> <select>
							<option>2015</option>
							<option>2016</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<h4>Terms and Conditions</h4>
				<div class="input-group">
					<input id="terms" type="checkbox" /> <label for="terms">I
						accept the terms and conditions for signing up to this service,
						and hereby confirm I have read the privacy policy.</label>
				</div>
			</div>
		</form>
		</div>
	</div>


	<!-- 다음 우편번호 API script -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!--  signup.js 불러오기 ->> 여기는 상대 경로로 해도 별 문제 없음. -->
<script src="../js/signup.js" type="text/javascript"></script>
<!--  푸터 영역 -->
<%@include file="../footer.jsp"%>
</body>
</html>