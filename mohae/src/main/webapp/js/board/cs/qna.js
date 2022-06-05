$(function(){
	console.log(window.sessionStorage);
	if(window.sessionStorage.getItem("user")==null){	// 세션이 비어있으면 = 로그인이 안 되어읐으면 로그인페이지로 보내기
		window.location.href = "/mohae/member/login.jsp";
	}else{
		gettablelist();
	}
	/////////////////////////////// 이부분 고쳐놔
});

let jsonArray;
function gettablelist(){
	$.ajax({
		url:"../Gettablejson",
		data:{"boardcategory":1},
		success:function(args){
			jsonArray=args;
			showtable(jsonArray);
		}
	})
}
// data:{"json":JSON.stringify(jsonarray)},

function showtable(jsonArray){
	let html=	'<tr>'+
					'<th>번호</th><th>문의유형</th><th>제목</th><th>작성일자</th>'+
				'</tr>';
	
	for(let i=0; i<jsonArray.length;i++){
		for(let i=0; i<jsonArray.length; i++){
			html+=	'<tr>'+
						'<td>'+i+1+'</td><td>'+jsonArray[i]['boardcontenttype']+'</td>'+
						'<td>'+jsonArray[i]['boardcontent']+'</td><td>'+jsonArray[i]['boarddatetime']+'</td>'+
					'</tr>';
		}		
	}			
	$("#qnatable").html(html);			
}
