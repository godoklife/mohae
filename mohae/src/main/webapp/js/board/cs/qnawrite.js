$(document).ready(function(){	// 자꾸 부투스트랩이랑 충돌나서 standalone 버전 사용
	document.getElementById('btitle').focus();	// 페이지 실행시 제목입력란으로 자동 포커스 이동
	$('#summernote').summernote({
		lang:'ko-KR',
		tabsize: 2,
		minHeight: 600,
		maxHeight: 600,
		placeholder: '내용을 입력하세요',
		callbacks:{
			onImageUpload: function(files){
				for(var i=0; i<files.length; i++)
				uploadSummernoteImageFile(files[i],this);
			},
			onPaste: function(e){
				var clipboardData = e.originalEvent.clipboardData;
				if(clipboardData && clipboardData.items && clipboardData.items.length) {
					var item = clipboardData.items[0];
					if(item.kind==='file' && item.type.indexOf('image/')!==-1){
						e.preventDefault();
					}
				}
			}
		}
	});
	function uploadSummernoteImageFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		console.log(file);
		$.ajax({
			data : data,
			type : "POST",
			enctype : "multipart/form-data",
			url : "SummernoteImgUpload",	// 그냥 모든 board 공용 서블릿으로 써도 될거같은데?? 확인해보기
			contentType : false,
			processData : false,
			success : function(args) {
				var json = JSON.parse(args);
            	//항상 업로드된 파일의 url이 있어야 한다.
				$(editor).summernote('insertImage', json['url']);
			}
		});
	};
});

function submit_qna_write(boardcategory){
	var boardtitle = $('#btitle').val();
	if(boardtitle==""){alert("제목을 입력하세요.");return;}
	var boardattachment = false;
	var boardcontenttype = $('#bcontenttype').val();
	
	
	
	var summernoteContent = $('#summernote').summernote('code');
	console.log("작성한 내용 : "+summernoteContent);
	alert("콘솔로그를 확인하시오.");
	
	$.ajax({
		url:"../SaveSummernote",
		data:{"summernoteContent":summernoteContent,
				"boardtitle":boardtitle,
				"boardcategory":boardcategory,
				"boardcontenttype":boardcontenttype,
				"boardattachement":boardattachment
				},
		type:"POST",
		enctype:"UTF-8",
		success:function(args){
			if(args==1){
				alert("정상적으로 등록했습니다.");
				window.history.back();	// 뒤로가기가 아니라 작성글 보기로 수정할것
			}else if(args==0){
				alert("등록에 실패했습니다.");
			}
		}
	})
};



















