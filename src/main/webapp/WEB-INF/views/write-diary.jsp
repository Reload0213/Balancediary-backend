<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>SummerNoteExample</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>

<!-- 서머노트를 위해 추가해야할 부분 -->
<script
	src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">
<!--  -->

</head>
<body>

	<div class="container">
		<form id="post-form"
			action="${pageContext.request.contextPath}/setdiary" method="post">
			<input type="hidden" name="owner"
				value="${sessionScope.account.userid}"> <label
				for="mcontent">아침</label>
			<textarea class="summernote" name="mcontent"></textarea>

			<label for="lcontent">점심</label>
			<!-- id로 맵핑시키나? -->
			<textarea class="summernote" name="lcontent"></textarea>

			<label for="dcontent">저녁</label>
			<textarea class="summernote" name="dcontent"></textarea>

			<label for="scontent">간식</label>
			<textarea class="summernote" name="scontent"></textarea>

			<label for="mncontent">야식</label>
			<textarea class="summernote" name="mncontent"></textarea>
			<input type="hidden" name="postlist" /> <input type="hidden"
				name="diarylist" />
			<button id="submit">완료</button>
		</form>
	</div>

	<script>
	$('.summernote').summernote({
		height: 300,                 // 에디터 높이
		minHeight: null,             // 최소 높이
		maxHeight: null,             // 최대 높이
		focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		lang: "ko-KR",					// 한글 설정
		placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
		callbacks: {	//여기 부분이 이미지를 첨부하는 부분
			onImageUpload : function(files) {
				uploadSummernoteImageFile(files[0],this);
			},
			onPaste: function (e) {
				var clipboardData = e.originalEvent.clipboardData;
				if (clipboardData && clipboardData.items && clipboardData.items.length) {
					var item = clipboardData.items[0];
					if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
						e.preventDefault();
					}
				}
			}
		}
});

					
	/**
	* 이미지 파일 업로드
	*/
	function uploadSummernoteImageFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		$.ajax({
			data : data,
			type : "POST",
			url : "${pageContext.request.contextPath}/uploadSummernoteImageFile",
			contentType : false,
			processData : false,
			success : function(data) {
            	//항상 업로드된 파일의 url이 있어야 한다.
				$(editor).summernote('insertImage', '${pageContext.request.contextPath}'+data.url);
            	console.log(data);
			}
		});
	}

	</script>
</body>
</html>