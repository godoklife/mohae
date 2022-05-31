<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/mohae/css/find.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<%@include file="../header1.jsp"%>

<div>
		<div class="form">

			<ul class="tab-group">
				<li class="tab active"><a href="#signup">Sign Up</a></li>
				<li class="tab"><a href="#login">Log In</a></li>
			</ul>

			<div class="tab-content">
				<div id="signup">
					<h1>Sign Up for Free</h1>

					<form action="/" method="post">

						<div class="top-row">
							<div class="field-wrap">
								<label> First Name<span class="req">*</span>
								</label> <input type="text" required autocomplete="off" />
							</div>

							<div class="field-wrap">
								<label> Last Name<span class="req">*</span>
								</label> <input type="text" required autocomplete="off" />
							</div>
						</div>

						<div class="field-wrap">
							<label> Email Address<span class="req">*</span>
							</label> <input type="email" required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label> Set A Password<span class="req">*</span>
							</label> <input type="password" required autocomplete="off" />
						</div>

						<button type="submit" class="button button-block">Get
							Started</button>

					</form>

				</div>

				<div id="login">
					<h1>Welcome Back!</h1>

					<form action="/" method="post">

						<div class="field-wrap">
							<label> Email Address<span class="req">*</span>
							</label> <input type="email" required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label> Password<span class="req">*</span>
							</label> <input type="password" required autocomplete="off" />
						</div>

						<p class="forgot">
							<a href="#">Forgot Password?</a>
						</p>

						<button class="button button-block">Log In</button>

					</form>

				</div>

			</div>
			<!-- tab-content -->

		</div>
		<!-- /form -->
</div>
		
<%@include file="../footer.jsp"%>
<script type="text/javascript" src="/mohae/js/find.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
</body>
</html>