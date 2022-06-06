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
