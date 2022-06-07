$(function(){
	gettablelist();
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
					'<th width=10%>번호</th><th width=15%>문의유형</th>'+
					'<th width=60%>제목</th><th width=15%>작성일자</th>'+
				'</tr>';
	if(jsonArray.length==0){
		html+=	
				'<tr>'+
					'<td colspan="4">문의 내역이 없습니다.</td>'
				'</tr>';
		$("#qnatable").html(html);		
		return;		
	}			
	for(let i=0; i<jsonArray.length; i++){
		html+=	'<tr>'+
					'<td width=>'+(i+1)+'</td><td>'+jsonArray[i]['boardcontenttype']+'</td>'+
					'<td class="listtitle">'+jsonArray[i]['boardtitle']+'</td><td>'+jsonArray[i]['boarddatetime'].slice(undefined,11)+'</td>'+
				'</tr>';
	}		
	$("#qnatable").html(html);			
}
