<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apple Tree Board</title>
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

	<div id="boardList">
	
    	<h2>게시판</h2>
    	<table>
    		<tr>
    			<td colspan="5" style="border:white;text-align:right;"><a href="boardWrite.jsp">글 작성하기</a></td>
    		</tr>
    		<tr>
    			<th>글번호</th>
    			<th>글제목</th>
    			<th>작성날짜</th>
    		</tr>
			<c:forEach var="boardListResult" items="${boardListResult}">
				<tr>
						<td>${boardListResult.num }</td>
						<td>
							<a href="/boardDetail.do?boardNum=${boardListResult.num}">${boardListResult.title }</a>
						</td>
						<td>${boardListResult.reg_date }</td>
				</tr>
			
			</c:forEach>
    	</table>
    </div>






</body>
</html>