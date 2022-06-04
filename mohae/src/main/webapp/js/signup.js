let pass = [false, false, false, false, false, false, false];
$(function(){
	// 아이디 체크 부분
	$("#mid").keyup( function(){
		let mid = document.getElementById("mid").value;
		let idcheck = document.getElementById("idcheck");
		
		let idj = /^[a-zA-Z0-9]{5,15}$/;	// 영어 소문자 또는 대문자 또는 숫자가 포함된 5~15글자 사이 문자열
		
		if( idj.test(mid) ){	// mid가 정규표현식과 같으면
			$.ajax({
				url : "Idcheck",
				data : {"mid" : mid},	
				dataType : "text",
				success : function(args){
					if(args==1){
						idcheck.innerHTML = "사용 가능한 아이디 입니다."
						pass[0] = true;
					}else if(args==2){
						idcheck.innerHTML = "이미 가입되어 있는 아이디 입니다."
						pass[0] = false;
					}else if(args==0){	// SQL단에서 예외 발생시 = 에러페이지로 보내버리기
						location.replace("/mohae/error.jsp?code=exception");
							
					}
				}
			});	
		}else{
			idcheck.innerHTML = "아이디는 영문, 5~15자 이내여야 합니다.";
			pass[0] = false;
		}
	} );
	
	$("#memberpassword").keyup(function(){
		// 비밀번호 체크
		let memberpassword = $("#memberpassword").val();
		let memberpasswordcheck = $("#memberpasswordcheck").val();
		let passwordj = /^[a-zA-Z0-9]{5,15}$/
		
		if(passwordj.test(memberpassword)){
			if(memberpassword != memberpasswordcheck){
				if(memberpasswordcheck==""){	// 비밀번호 확인 란이 공백이라면
					$("#passwordcheck").html("비밀번호를 한번 더 입력해주세요.");
					pass[1]=false;
				}else{// 비밀번호와 비밀번호체크가 같지 않다면
					$("#passwordcheck").html("입력하신 비밀번호가 서로 다릅니다.");
					pass[1] = false;
				}
			}else {
				$("#passwordcheck").html("사용 가능한 비밀번호 입니다.")
				pass[1] = true;
				pass[2] = true;
			}
		}else{
			$("#passwordcheck").html("영문자,숫자 5~15글자 이내로 작성해주세요.")
			pass[1] = false;
		}
	});	
	
	// 비밀번호 체크
	$("#memberpasswordcheck").keyup(function(){
		let memberpassword = $("#memberpassword").val();
		let memberpasswordcheck = $("#memberpasswordcheck").val();
		
		let passwordj = /^[a-zA-Z0-9]{5,15}$/
		
		if(passwordj.test(memberpasswordcheck)){
			
			if(memberpassword != memberpasswordcheck){
				if(memberpassword==""){
					$("#passwordcheck").html("비밀번호 칸이 비어있습니다.");
					pass[2]=false;
				}else{
					// 비밀번호와 비밀번호체크가 같지 않다면
					$("#passwordcheck").html("입력하신 비밀번호가 서로 다릅니다.");
					pass[2] = false;
				}
			}else {
				$("#passwordcheck").html("사용 가능한 비밀번호 입니다.");
				pass[1] = true;
				pass[2] = true;
			}
			
		}else{
			$("#passwordcheck").html("영문자,숫자 5~15글자 이내로 작성해주세요.")
			pass[2] = false;
		}
	});	
	
	// 이름 체크
	$("#mname").keyup(function(){		
		let mname = $("#mname").val();
		let namej = /^[가-힣]{2,10}$/;	// 가-힣 : 한글 검사 조건문
		if(namej.test(mname)){
			$("#namecheck").html("사용 가능한 이름 입니다.");
			pass[3] = true;
		}else{
			$("#namecheck").html("한글, 2~10자 이내만 가능합니다.");
			pass[3] = false;
		}
	});
	
	// 전화번호 유효성 체크
	$("#mphone").keyup(function(){
		let mphone = $("#mphone").val();
		let phonej = /^010-([0-9]{4})-([0-9]{4})$/;
			// 010 - (숫자0~9, 네자리) - (숫자0~9, 네자리) 형식 검사.
		if(phonej.test(mphone)){
			$("#phonecheck").html("사용 가능한 휴대폰번호 입니다.");
			pass[4] = true;
		}else{
			$("#phonecheck").html("휴대폰 번호만 입력 가능합니다.");
			pass[4] = false;
		}
		
	});
	
		// 이메일 주소 유효성 체크
	$("#memail").keyup(function(){
		let memail = $("#memail").val();
		let memailaddress = $("#memailaddress").val();
//		let emailj = /^([a-zA-Z]{1,50})@([a-zA-Z]{1,50}).com$/;
		let emailj = /^([a-zA-Z0-9]{3,30})$/;
		let emailaddressj = /^([a-zA-Z0-9]{1,30})"."([a-zA-Z]{1,30})$/;
		let emailaddressj2 = /^([a-zA-Z0-9]{1,30}).([a-zA-Z]{1,10}).([a-zA-Z]{1,10})$/;
		if(memail=="" || memailaddress==""){
			$("#emailcheck").html("이메일 주소를 입력해주세요.");
			pass[5] = false;
		}else if(emailj.test(memail) &&( (emailaddressj.test(memailaddress)) || emailaddressj2.test(memailaddress))){
			let tmp = memail+"@"+memailaddress;
			$.ajax({
				url:"../Emailcheck",
				data:{"email":tmp},
				dataType : "text",
				success:function(args){
					if(args==1){
						$("#emailcheck").html("이미 가입되어있는 이메일 주소 입니다.");
						pass[5] = false;
					}else if(args==0){
						$("#emailcheck").html("사용 가능한 이메일 주소 입니다.");
						pass[5] = true;
					}
				}
			});
		}else{
			$("#emailcheck").html("이메일 주소는 영문 3~30자 이내여야 합니다.");
			pass[5] = false;
		}
		
	});
	
	$("#memailaddress").keyup(function(){
		let memail = $("#memail").val();
		let memailaddress = $("#memailaddress").val();
//		let emailj = /^([a-zA-Z]{1,50})@([a-zA-Z]{1,50}).com$/;
		let emailj = /^([a-zA-Z0-9]{3,30})$/;
		let emailaddressj = /^([a-zA-Z0-9]{1,30})"."([a-zA-Z]{1,30})$/;
		let emailaddressj2 = /^([a-zA-Z0-9]{1,30}).([a-zA-Z]{1,10}).([a-zA-Z]{1,10})$/;
		
		if(emailj.test(memail)){
			if(emailj.test(memail) &&( (emailaddressj.test(memailaddress)) || emailaddressj2.test(memailaddress))){
				let tmp = memail+"@"+memailaddress;
				$.ajax({
					url:"../Emailcheck",
					data:{"email":tmp},
					dataType : "text",
					success:function(args){
						if(args==1){
							$("#emailcheck").html("이미 가입되어있는 이메일 주소 입니다.");
							pass[5] = false;
						}else if(args==0){
							$("#emailcheck").html("사용 가능한 이메일 주소 입니다.");
							pass[5] = true;
						}
					}
				});
			}else{
				$("#emailcheck").html("그런 이메일 주소는 없습니다");
				pass[5] = false;
			}
		}
	});
	
	// 이메일 주소 목록상자 선택시
	$("#emailselect").change(function(){	// 목록 상자내 값이 변경되었을때 이벤트 발동
		let emailselect = $("#emailselect").val();
		if(emailselect==""){
			$("#memailaddress").val("");
			$("#memailaddress").attr("readonly", false);
			pass[5] = false;	
			$("#emailcheck").html("");
		}else {
			$("#memailaddress").val(emailselect);
			$("#memailaddress").attr("readonly", true);	// attr ->> 애트리뷰트 속성. 
			$("#emailcheck").html("");
		}
	});
	
	// 주소 체크 
	$("#sample4_detailAddress").keyup( function() {
		let addrees1 = $("#sample4_postcode").val();
		let addrees2 = $("#sample4_roadAddress").val();
		let addrees3 = $("#sample4_jibunAddress").val();
		let addrees4 = $("#sample4_detailAddress").val();
		
		if( addrees1 =="" || addrees2 =="" || addrees3 =="" || addrees4==""  ) {
			$("#addresscheck").html("모든 주소를 입력해주세요");  pass[6] = false;
		}else{
			$("#addresscheck").html("사용가능한 주소 입니다.");  pass[6] = true;
		}
	});
	
});


// 다음 스크립트 API JS
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
// 다음 api js
  function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }



// form 전송 메서드
function signup(){
	var flag=true;
	for(i=0; i<pass.length; i++){
		if(pass[i]==false){flag=false;break;}	// 하나라도 false이면 더이상 검사할 필요가 없음
	}
	
	
	if(flag){	
		$.ajax({
			type : "get",
			url : "../Signup",	// 통신할 경로
				//signup.js를 호출한 페이지인 signup.jsp가 member폴더 내에 있으므로 한번 나와야함.
			data : {"mid" : mid,	// 해당 경로로 보내는 데이터
					"memberpassword" : memberpassword,
					"mname" : mname,
					"mphone" : mphone,
					"memail" : memail,
					"maddress" : maddress},
			dataType : "text",
			success : function(args){	// 해당 경로로부터 받는 데이터
				alrt(val(args));
			}	
			
		});	// .ajax END
	}
}




function passwordchange(){
	$("#passwordbox").css("display","block");	// display=none -> block
}





