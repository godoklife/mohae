function showpopup(mid){
	if(mid=="null"||mid==""){
		window.open("/mohae/board/livechat.jsp","chatting","width=640, height=960, left=100. top=100");
	}else if(mid=="admin"){
		window.open("/mohae/board/waitinglist.jsp","waitinglist","width=640, height=960, left=100. top=100");
			// 관리자가 버튼 누르면 채팅 대기 목록 페이지로 들어감
	}
}