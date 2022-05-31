<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="/mohae/css/login.css" rel="stylesheet"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<%@include file="../header.jsp"%>	 	 
	

<div class="login-form">
    <form action="/examples/actions/confirmation.php" method="post">
        <h2 class="text-center">Sign in</h2>    
        <div class="text-center social-btn">
      <a onclick="kakaoLogin();" href="javascript:void(0)"> <img alt="" src="/aa/img/kakao_login.png"></a>
        </div>
    <div class="or-seperator"><i>or</i></div>
        <div class="form-group">
          <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="username" placeholder="Username" required="required">
            </div>
        </div>
    <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" class="form-control" name="password" placeholder="Password" required="required">
            </div>
        </div>        
        <div class="form-group">
            <button type="submit" class="btn btn-dark btn-block login-btn">Sign in</button>
        </div>
        <div class="clearfix">
            <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label>
            <a href="#" class="pull-right text-danger">Forgot Password?</a>
        </div>  
        
    </form>
    <div class="hint-text small">Don't have an account? <a href="#" class="text-danger">Register Now!</a></div>
</div>
		<div>
			<a style="text-align: center;" onclick="kakaoLogout();" href="javascript:void(0)"> 
			<span>카카오 로그아웃</span></a>
		</div>
	

<%@include file="../footer.jsp"%>
<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="/mohae/js/login.js"></script>

</body>    
</html>