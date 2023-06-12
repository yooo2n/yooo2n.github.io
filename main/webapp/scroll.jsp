<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - TinyPolyWorld - ThreeJS experiements.</title>
  <link rel="stylesheet" href="./css/scrollstyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&amp;display=swap'><link rel="stylesheet" href="./css/high-fivestyle.css">
  
  <!-- Bootstrap file -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<!-- partial:index.partial.html -->
<div id="world"></div>
<a href="./login.jsp" target="_blank"button class="btn btn_works">login</button>
<button class="high-five">
  Login
  <div class="hands">
    <svg class="left" viewBox="0 0 32 36">
      <ellipse cx="14" cy="13" rx="9" ry="11" />
      <path
        d="M16.0011 5.5C15.5011 3.5 13.5012 4 12.5012 5.5C11.5012 7 9.5 14 9.75 20M16.0011 5.5C14.9998 8 13.9981 12 13.9994 16.5M16.0011 5.5C16.5011 4.5 17.5646 2.5 18.4994 2.5C19.737 2.5 20.7439 3.28645 20.5011 4.5M23.4981 7.5C23.4981 7.5 21.9994 12 21.9994 16M23.4981 7.5C24.9981 5.5 27.0011 7 27.0011 8.5C26.7527 10.9503 25.2188 11.8879 25.4985 25.5C25.6052 30.6943 21.6939 34 16.4985 34C11.5003 34 6.59828 29.4598 6.0011 23.5C5.5001 18.5 6.64678 15.1392 7.50115 14C9.00115 12 9.51575 14.5859 9.50102 16C9.48502 17.5364 9.65 20 9.65 20M23.4981 7.5C24 6 23.5 2.5 20.5011 4.5M20.5011 4.5C19.0011 8 17.9994 11.5 17.9994 16.5"
      />
    </svg>
    <svg class="right" viewBox="0 0 32 36">
      <ellipse cx="14" cy="13" rx="9" ry="11" />
      <path
        d="M16.0011 5.5C15.5011 3.5 13.5012 4 12.5012 5.5C11.5012 7 9.5 14 9.75 20M16.0011 5.5C14.9998 8 13.9981 12 13.9994 16.5M16.0011 5.5C16.5011 4.5 17.5646 2.5 18.4994 2.5C19.737 2.5 20.7439 3.28645 20.5011 4.5M23.4981 7.5C23.4981 7.5 21.9994 12 21.9994 16M23.4981 7.5C24.9981 5.5 27.0011 7 27.0011 8.5C26.7527 10.9503 25.2188 11.8879 25.4985 25.5C25.6052 30.6943 21.6939 34 16.4985 34C11.5003 34 6.59828 29.4598 6.0011 23.5C5.5001 18.5 6.64678 15.1392 7.50115 14C9.00115 12 9.51575 14.5859 9.50102 16C9.48502 17.5364 9.65 20 9.65 20M23.4981 7.5C24 6 23.5 2.5 20.5011 4.5M20.5011 4.5C19.0011 8 17.9994 11.5 17.9994 16.5"
      />
    </svg>
  </div>
  <div class="success" href="./login.jsp"><span>Login</span></div>
</button>
<a href="./join.jsp" target="_blank"button class="btn btn_works">join</button>
<button class="high-five">
  Join
  <div class="hands">
    <svg class="left" viewBox="0 0 32 36">
      <ellipse cx="14" cy="13" rx="9" ry="11" />
      <path
        d="M16.0011 5.5C15.5011 3.5 13.5012 4 12.5012 5.5C11.5012 7 9.5 14 9.75 20M16.0011 5.5C14.9998 8 13.9981 12 13.9994 16.5M16.0011 5.5C16.5011 4.5 17.5646 2.5 18.4994 2.5C19.737 2.5 20.7439 3.28645 20.5011 4.5M23.4981 7.5C23.4981 7.5 21.9994 12 21.9994 16M23.4981 7.5C24.9981 5.5 27.0011 7 27.0011 8.5C26.7527 10.9503 25.2188 11.8879 25.4985 25.5C25.6052 30.6943 21.6939 34 16.4985 34C11.5003 34 6.59828 29.4598 6.0011 23.5C5.5001 18.5 6.64678 15.1392 7.50115 14C9.00115 12 9.51575 14.5859 9.50102 16C9.48502 17.5364 9.65 20 9.65 20M23.4981 7.5C24 6 23.5 2.5 20.5011 4.5M20.5011 4.5C19.0011 8 17.9994 11.5 17.9994 16.5"
      />
    </svg>
    <svg class="right" viewBox="0 0 32 36">
      <ellipse cx="14" cy="13" rx="9" ry="11" />
      <path
        d="M16.0011 5.5C15.5011 3.5 13.5012 4 12.5012 5.5C11.5012 7 9.5 14 9.75 20M16.0011 5.5C14.9998 8 13.9981 12 13.9994 16.5M16.0011 5.5C16.5011 4.5 17.5646 2.5 18.4994 2.5C19.737 2.5 20.7439 3.28645 20.5011 4.5M23.4981 7.5C23.4981 7.5 21.9994 12 21.9994 16M23.4981 7.5C24.9981 5.5 27.0011 7 27.0011 8.5C26.7527 10.9503 25.2188 11.8879 25.4985 25.5C25.6052 30.6943 21.6939 34 16.4985 34C11.5003 34 6.59828 29.4598 6.0011 23.5C5.5001 18.5 6.64678 15.1392 7.50115 14C9.00115 12 9.51575 14.5859 9.50102 16C9.48502 17.5364 9.65 20 9.65 20M23.4981 7.5C24 6 23.5 2.5 20.5011 4.5M20.5011 4.5C19.0011 8 17.9994 11.5 17.9994 16.5"
      />
    </svg>
  </div>
  <div class="success" ><span>Join</span></div>
</button>


<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/three.js/86/three.min.js'></script><script  src="./js/scrollscript.js"></script>
    <script src='https://unpkg.co/gsap@3/dist/gsap.min.js'></script>
<script src='https://assets.codepen.io/16327/MorphSVGPlugin3.min.js'></script><script  src="./js/high-fivescript.js"></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script><script  src="./js/cscript.js"></script>
</body>
</html>
