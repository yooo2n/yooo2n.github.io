<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Simple and light sign up form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="./css/signupstyle.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="user">
    <header class="user__header">
        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3219/logo.svg" alt="" />
        <h1 class="user__title">A lightweight and simple sign-up form</h1>
    </header>
    
    <form class="form" method="post" action="./join_Action.jsp">
        <div class="form__group">
            <input type="text" placeholder="Username" name="member_name" maxlength="20" class="form__input" />
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="ID" name="member_id" maxlength="30" class="form__input" />
        </div>
        
        <div class="form__group">
            <input type="password" placeholder="Password" name="member_pw" maxlength="30" class="form__input" />
        </div>
        
        <div class="form__group">
            <input type="email" placeholder="Email" name="member_email" maxlength="40" class="form__input" />
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="Address" name="member_address" maxlength="50" class="form__input" />
        </div>
        
        <div class="form__group">
            <input type="text" placeholder="Tell" name="member_tell" class="form__input" />
        </div>
        
        <button id="join" class="btn">Register</button>
    </form>
</div>
<!-- partial -->
  <script  src="./js/signupscript.js"></script>

</body>
</html>
