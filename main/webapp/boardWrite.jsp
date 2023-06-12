<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apple Tree Board Write Form</title>
<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js'></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat:100,300,400,500,700" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/mainPage.css">
<link rel="stylesheet" href="../../css/board.css">


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

<script type="text/javascript"></script>

<style>
	
				
	#btn-submit {
 	 margin-top: 30px;
 	 
	}

	#btn-submit{
	  width: 80px;
	  height: 40px;
	  margin: 0px 10px;
	  color: #fff;
	  background: rgb(100, 202, 172);
	  border: none;
	  border-radius: 20px;
	  font-size: 20px;
	  cursor: pointer;
	  
	}
	
	}
	
</style>

</head>
<body>
		<main>
			<div style="width: 80%">
			<%
				String msg = (String)request.getAttribute("error");
				if(msg == null)
					msg="";
			%>


				<form action="boardWrite.do" method="post">
					<div class="board-write-form">
						<label for="title">제목</label>
						<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해주세요">
					</div>
					<!-- <div class="board-category">
						<label for="category">카테고리</label>
						<select class="form-control" id="categoryselect">
							<option>일기</option>
							<option>가계부</option>
							<option>좋아하는사진</option>
						</select>
					</div> -->
					</br>
					<div class="board-write-form">
						<label for="content">내용</label>
						</br>
						<textarea class="form-control" name="content" id="content" placeholder="내용을 입력해주세요" rows="10"></textarea>
					</div>
					</br>
					<div class="btn-area">
						<button id="btn-submit" type="submit">등록</button>
						<button id="btn-submit" type="reset">취소</button>
					</div>
				</form>

			</div>
		</main>


</body>
</html>