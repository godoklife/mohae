
let websocket = null;	// js 웹 소켓 변수


$("#incontent").focus();	// 페이지 처음 열렸을 때 키보드 커서 입력창으로 이동시키기


// 채팅입력란에 엔터키 눌렀을때 이벤트
function enterkey(memberid){
//	if(memberid=='null'){
//		alert("로그인 후 채팅 입력이 가능합니다. null 문자열 받음.");
//		$("#incontent").val("");
//		return;
//	}	 테스트 위해 로그인 전용 채팅 제한 임시 제거
	if(window.event.keyCode==13){
		if($("#incontent").val()=="\n"){
			alert("내용을 입력해주세요.");
			$("#incontent").val("");	// 엔터키 입력으로 인한 출바꿈 없애주기.
			return;
		}
		send(memberid);
	}
}

// 전송 버튼을 눌렀을때 이벤트
function sendbtn(memberid){
//	if(memberid=='null'){
//		alert("로그인 후 채팅 입력이 가능합니다. null 문자열 받음.");
//		return;
//	}	 테스트 위해 로그인 전용 채팅 제한 임시 제거
	if($("#incontent").val()==""){
		alert("내용을 입력해주세요.");
		return;
	}
	send(memberid)
}


start();	// 테스트 목적으로 웹소켓 1회 무조건 실행
// 채팅 소켓 실행
function start(){
	// js에서 사용되는 웹소캣 클래스(ws://IP번호:port/프로젝트명/서버소켓이름)
	let memberid = $("#memberid").val();
	if(memberid=="admin"){	// 만약 관리자가 채팅을 시도하면 채팅방을 선택할수 있도록 함
		alert("관리자입니다");
	}
	websocket = new WebSocket("ws://localhost:8080/mohae/chatting/"+memberid);
	websocket.onopen  = function(e){onOpen(e)};
	websocket.onmessage = function(e){onmessage(e)};
	websocket.onclose = function(e){onclose(e)};
	websocket.onerror = function(e){onerror(e)};
}


function onmessage(e){
	console.log(e);
	let msg = JSON.parse(e.data);	// 수신한 문자열을 JSON형식으로 변환
	let from  = msg["from"];
	let content = msg["content"];
	let img = msg["img"];
	let date = msg["date"];
	
	let html = $("#contentbox").html();
	
	if (msg["type"]!=1){
		let memberhtml="";
		for(let i = 0; i<msg.length; i++){
			memberhtml+=
			'<div class="row p-3">	<!--  접속자 정보 표시 구역 -->'+
				'<div class="col-sm-4">	<!--  프로필 이미지 표시 구역 -->'+
					'<img width=100% class="rounded-circle" src="../img/chatting/testimg.jpg">'+
						'<!--  class="rounded-circle" : 부트스트랩, 이미지를 원형으로 출력-->'+
				'</div>'+
				'<div class="col-sm-8">	<!--  접속자 이름, 기능 출력 구역 -->'+
					'<div class="member_name"> '+msg[i]["memberid"]+' </div>'+
					'<div class="btnbox">'+
						'<span> 귓속말 </span>'+
						'<span> 친구추가 </span>'+
					'</div>'+
				'</div>'+
			'</div>';
		}
		$("#enterlist").html(memberhtml);
		
	}else{
		if(from==$("#memberid").val()){	// 내가 보냈을 때의 출력부
		html+= '<div class="secontent">'+
					'<span class="date">'+date+'</span>'+
					'<span class="content">'+content+'</span>'+
				'</div>';
		}else{	// 남이 보냈을 때의 출력부
			html+=	'<div class="row g-0">'+
						'<div class="col-sm-1 pt-3">'+
							'<img width=100% src="../img/chatting/'+img+'">'+
						'</div>'+
						'<div class="col-sm-10">'+
							'<div class="recontent">	<!--  받은 메시지 출력 구역 -->'+
								'<div class="member_name">'+from+'</div>'+
								'<span class="content">'+content+'</span>'+
								'<span class="date">'+date+'</span>'+
							'</div>'+
						'</div>'+
					'</div>';
		}
		$("#contentbox").html(html);
		
		// 스크롤 자동으로 하단으로 내리기
		$("#contentbox").scrollTop($("#contentbox")[0].scrollHeight);
			// $("#contentbox").scrollTop : 현재 스크롤의 상단 위치
			// $("#contentbox")[0].scrollHeight : 현재 스크롤의 전채 길이
			
		}
	
}

function onOpen(e){
}

function onclose(e){
}

function onerror(e){
}

function send(memberid){
	let content = $("#incontent").val();
	// json 형식으로 통신 ( JSON과 DB 중에서 선택 )
	let msg = {	// js 객채화
		type : "1",			// 타입 : 1 이면 일반 메시지, 2이면 접속,탈퇴 알림
		from : memberid, 		// 보내는 사람		
		content : content,	// 채팅 내용
		img : "testimg.jpg",	// 프로필사진
		date : new Date().toLocaleTimeString()	// 채팅 보낸 시간
	};
	// json형식으로 통신할 떄 json 모양의 문자열로 변환
		// JSON -> 문자열 : JSON.stringify(보낼변수)
		// 문자열 -> JSON : JSON.parse(받은변수)
		
	
	websocket.send(JSON.stringify(msg));		// @OnMessage로 content 전송
	$("#incontent").val("");	// 전송 후 입력창 비워주기
	$("#incontent").focus();	// 전송 후 커서 유지
}

function exportbtn(){
	alert("test");
}