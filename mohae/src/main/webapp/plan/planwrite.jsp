<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<!-- 게시판api( 썸머노트) css cdn -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
 	<!-- 썸머노트 기본 부트스트랩버전 3버전 css cdn -->
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<!-- 썸머노트 css cdn -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	
	<link href="/jspweb/css/boardwrite.css" rel="stylesheet">
	
	
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	

</head>
<body>


	<%@include file ="../header.jsp" %>
	
	
	<div class="container">
		<a href="boardlist.jsp"><button>글목록</button></a>
		<h3> 글쓰기 </h3>
		<form action="../board/write" method="post" enctype="multipart/form-data" >
			<!-- form 전송 인코딩 타입 : 기본타입은 첨부파일 불가능  -->
			<!-- form 첨부파일 전송 인코딩 타입 : enctype="multipart/form-data" -->
			제목 : <input type="text" name="btitle" placeholder="동행의제목"> <br>
			<textarea name="bcontent" id="summernote">
			<h3>동행장소:</h3>
			<br><br>
			<h3>동행목적:</h3>
			<br><br>
			<h3>사진:</h3>
			<br><br>
			<h3>동행시간:</h3>
			<br><br>
			<h3>동행소개:</h3>
			</textarea>
			첨부파일 : <input type="file" name="bfile"> <br>
			
			동행인원 : <input type="text" name="planamount" placeholder="숫자만입력하세요">명 <br>
			
			<input style="display:none" type="text" id="sample4_postcode" name="address1" placeholder="우편번호">
			동행의 키포인트가 되는 장소를 입력해주세요 (도로명주소로) 입력하면 지도로 표시해드립니다. <br>
			<input type="button" onclick="sample4_execDaumPostcode()" value="나의 동행장소찾기"><br>
			<input  type="text" id="sample4_roadAddress" name="address2" placeholder="도로명주소">
			<input style="display:none" type="text" id="sample4_jibunAddress" name="address3" placeholder="지번주소">
			<span id="guide" style="color:#999;display:none"></span>
			<input style="display:none" 
			type="text" id="sample4_detailAddress" name="address4" placeholder="상세주소">
		<br>
		<span id="addresscheck"></span>
			날짜선택<input  type="button" class="datepicker" value="날짜선택" ><br>

		

			<input type="submit" value="등록"><input type="reset" value="취소">
		</form>
	</div>
	
	
	<%@include file ="../footer.jsp" %>
	<!-- 썸머노트 기본 부트스트랩버전 3버전 js cdn -->
	
	
		<!-- 데이트피커 -->
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<!-- 썸머노트 js cdn  -->
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	<script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
	<!-- 사용자 정의 js -->
	<script src="/mohae/js/board.js" type="text/javascript"></script>


	<script src="../js/plan.js" type="text/javascript"></script>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>


