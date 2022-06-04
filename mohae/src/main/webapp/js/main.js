
// 어디로 떠나세요? 텍스트 입력창 누르면 id=select_local div의 display 속성 변경해서 노출
function selectlocal(){	
	let css=document.getElementById("select_local");
	if(css.style.display=='none'){
		css.style.display='block';
		showtravel();
	}else{	// else가 아닌 아무곳이나 눌러서 none으로 바뀌도록 수정할것.
		css.style.display='none';
	}
}

// 좌측 주요도시 출력
function showtravel(){
	let travelHtml='<span>주요 도시</span>'+
							'<div class="row">'+
								'<div class="col-md-4" id="left_menu">'+
									'<ul id="travel_list">'+
										'<li onclick="showdetailtravel(1)">지금 여행 가능</li>'+
										'<li onclick="showdetailtravel(2)">지금 여행 불가능</li>'+
									'</ul>'+
								'</div>'+
								'<div class="col-md-8" id="right_menu">'+
									'<ul id="selected_travel">'+
									'</ul>'+
								'</div>'+
							'</div>';
	$("#select_local").html(travelHtml);	
}

// 좌측 주요도시 선택시 강조처리 후 우측 상세매뉴 출력
function showdetailtravel(no){
	let css=document.getElementById('travel_list').getElementsByTagName('li');	// id=travle_list에서 li태그 찾기
//	css[no-1].className='selected';	// 클래스명 부여, 이거보다 그냥 바로 스타일 적용하는게 나을듯??
	css[no-1].style.backgroundColor='white';
	let selected_travel='';
	if(no==1){
		selected_travel='<li><a href="error.jsp?code=notErr">사이판</a></li>'+
						'<li><a href="error.jsp?code=notErr">괌</a></li>';
	}else if(no==2){
		selected_travel='<li><a href="error.jsp?code=notErr">테스트매뉴</a></li>'+
						'<li><a href="error.jsp?code=notErr">테스트매뉴1234</a></li>';
	}
	$("#selected_travel").html(selected_travel);		
}