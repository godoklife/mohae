var tmpIndex=-1;

$(document).on('click', '#open_local', function(e){
	var target = $("#select_local");
	$(target).addClass("show");
	showtravel();
});

// 외부영역 클릭시 도시 선택 레이어팝업 닫히는 스크립트
$(document).mouseup(function(e){
	var css= $("#select_local");
	if(css.has(e.target).length===0){
		css.removeClass('show');	
			// class 이름 중에서 'show' 제거 ->> display:none으로 변경
	};
});




// 어디로 떠나세요? 텍스트 입력창 누르면 id=select_local div의 display 속성 변경해서 노출
/*
function selectlocal(){	
	let css=$("#select_local");
	if(css.){	
		css.addclass('show');
		showtravel();
	}else{	// else가 아닌 아무곳이나 눌러서 none으로 바뀌도록 수정할것.
		css.removeClass('show');
	}
};
*/

// 좌측 주요도시 출력
function showtravel(category){
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
};

// 좌측 주요도시 선택시 강조처리 후 우측 상세매뉴 출력
function showdetailtravel(no){
	
	let css=document.getElementById('travel_list').getElementsByTagName('li');	// id=travle_list에서 li태그 찾기
	css[no-1].className='selected';	// 클래스명 부여 ->> 그냥 바로 css 속성 부여하는게 나은듯?? ->> 클릭이 아니라 드래그하면 버그생겨서 안됨.
	
	if(tmpIndex>=0){	// 이전에 선택한 주요도시가 있다면
		css[tmpIndex-1].removeAttribute('class');	// class 속성 제거 ->> 강조 제거
	};
	
	if(no==1){
		selected_travel='<li><a href="error.jsp?code=notErr">사이판</a></li>'+
						'<li><a href="error.jsp?code=notErr">괌</a></li>';
	}else if(no==2){
		selected_travel='<li><a href="error.jsp?code=notErr">테스트매뉴</a></li>'+
						'<li><a href="error.jsp?code=notErr">테스트매뉴1234</a></li>';
	};
	$("#selected_travel").html(selected_travel);		
	tmpIndex=no;
};
