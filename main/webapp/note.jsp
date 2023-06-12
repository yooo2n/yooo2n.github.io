<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script></head>
<body>
  <div class="wrapper">
    <main role="main" class="container">
      <form name="form" method="POST">
        <div class="pt-1">
        <input type="text" name="title" placeholder="제목을 입력하세요." style="border-radius:5px; width:100%; padding:5px;">
        </div>
        <div class="pt-1">
          <textarea id="summernote" name="contents"></textarea>
        </div>
        <div id="summernote"></div>
        <script>
          $(document).ready(function() {
              $('#summernote').summernote();
          });
        </script>
        <div class="pt-1 text-right" align="right">
          <button type="button" class="btn">등록</button>
        </div>

</main>