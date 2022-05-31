<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/mohae/css/find.css" rel="stylesheet"/>

</head>
<body>
<%@include file="../header1.jsp"%>

<section class="user">
  <div class="user_options-container">
    <div class="user_options-text">
      <div class="user_options-unregistered">
        <h2 class="user_unregistered-title">비밀번호를 잃어버리셨습니까?</h2>
        <p class="user_unregistered-text">여기 버튼을 누르고 비밀번호를 찾아주세요</p>
        <button class="user_unregistered-signup" id="signup-button">Find password</button>
      </div>

      <div class="user_options-registered">
        <h2 class="user_registered-title">아이디를 잃어버리셨습니까?</h2>
        <p class="user_registered-text">여기 버튼을 누르고 아이디를 찾아주세요.</p>
        <button class="user_registered-login" id="login-button">Find id</button>
      </div>
    </div>
    
    <div class="user_options-forms" id="user_options-forms">
      <div class="user_forms-login">
        <h2 class="forms_title">아이디 찾기</h2>
        <form class="forms_form">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
              <input type="email" placeholder="Email" class="forms_field-input" required autofocus />
            </div>
            <div class="forms_field">
              <input type="text" placeholder="Name" class="forms_field-input" required />
            </div>
          </fieldset>
          <div class="forms_buttons">
            <input type="submit" value="Find id" class="forms_buttons-action">
          </div>
        </form>
      </div>
      <div class="user_forms-signup">
        <h2 class="forms_title">비밀번호 찾기</h2>
        <form class="forms_form">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
              <input type="text" placeholder="Id" class="forms_field-input" required />
            </div>
            <div class="forms_field">
              <input type="email" placeholder="Email" class="forms_field-input" required />
            </div>
            <div class="forms_field">
              <input type="text" placeholder="Name" class="forms_field-input" required />
            </div>
          </fieldset>
          <div class="forms_buttons">
            <input type="submit" value="Find pw" class="forms_buttons-action">
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

<%@include file="../footer.jsp"%>
<script type="text/javascript" src="/mohae/js/find.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
</body>
</html>