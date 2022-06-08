function up(){
	alert("up버튼 클릭");
	
	$.ajax({
		url: "reivew",
		data: {"reviewno" : reviewno,
			"reviewlike" : reviewlike},
		success: function(re){
			
		}
	});
}

function down(){
	alert("down버튼 클릭");
	$.ajax({
		url: "reivew",
		data: {"reviewno" : reviewno,
			"reviewlike" : reviewlike},
		success: function(re){
			
		}
	});
}