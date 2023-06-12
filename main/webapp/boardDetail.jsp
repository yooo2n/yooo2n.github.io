<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apple Tree Board Detail</title>
<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js'></script>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat:100,300,400,500,700" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/mainPage.css">
<link rel="stylesheet" href="css/board.css">


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

<script type="text/javascript"></script>

</head>
<body>

	<div class="wrapper">
			<div id="boardDetail">
			
				<h1>제목 : ${boardDetailResult.title}</h1>
				<p>내용 : ${boardDetailResult.content}</p>
				<p>번호 : ${boardDetailResult.num}</p>
				<p>작성자 : ${boardDetailResult.writer}</p>
				<p>작성일: ${boardDetailResult.reg_date}</p>
				
				<a href="/update?board_idx=${boardDetailResult.num}" class="btn btn-outline-secondary btn-sm" role="button">수정</a>
	            <a href="#" class="btn btn-outline-secondary btn-sm " role="button">삭제</a>
	            </br></br>
	            <a href='/boardList.do' class="btn btn-info" role="button">목록으로</a>
            
			</div>
	</div>


</body>
</html>