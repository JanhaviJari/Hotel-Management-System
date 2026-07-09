<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Hotel Management System | Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{

background:#f4f7fc;
height:100vh;

display:flex;
justify-content:center;
align-items:center;

}

.container-box{

width:900px;
height:520px;

background:white;

display:flex;

border-radius:20px;

overflow:hidden;

box-shadow:0 10px 30px rgba(0,0,0,.15);

}

/* LEFT SIDE */

.left{

width:50%;

background:linear-gradient(180deg,#0d6efd,#052c65);

color:white;

display:flex;
flex-direction:column;
justify-content:center;
align-items:center;

padding:40px;

text-align:center;

}

.left i{

font-size:90px;

margin-bottom:20px;

}

.left h1{

font-size:34px;

font-weight:bold;

margin-bottom:15px;

}

.left p{

font-size:17px;

line-height:30px;

opacity:.95;

}

/* RIGHT SIDE */

.right{

width:50%;

padding:60px;

display:flex;

flex-direction:column;

justify-content:center;

}

.right h2{

text-align:center;

margin-bottom:30px;

color:#0d6efd;

font-weight:bold;

}

.input-group{

margin-bottom:22px;

}

.input-group-text{

background:#0d6efd;

color:white;

border:none;

width:50px;

justify-content:center;

}

.form-control{

height:50px;

}

.btn-login{

width:100%;

height:50px;

font-size:18px;

font-weight:bold;

background:#0d6efd;

color:white;

border:none;

transition:.3s;

}

.btn-login:hover{

background:#052c65;

}

.footer{

margin-top:30px;

text-align:center;

font-size:14px;

color:gray;

}

</style>

</head>

<body>

<div class="container-box">

<!-- Left -->

<div class="left">

<i class="fa-solid fa-hotel"></i>

<h1>Hotel Management</h1>

<p>

Welcome to the Hotel Management System.

Manage Customers, Rooms, Bookings,

Billing and Reports from one place.

</p>

</div>

<!-- Right -->

<div class="right">

<h2>Administrator Login</h2>

<form action="LoginServlet" method="post">

<div class="input-group">

<span class="input-group-text">

<i class="fa-solid fa-user"></i>

</span>

<input
type="text"
name="username"
class="form-control"
placeholder="Username"
required>

</div>

<div class="input-group">

<span class="input-group-text">

<i class="fa-solid fa-lock"></i>

</span>

<input
type="password"
name="password"
class="form-control"
placeholder="Password"
required>

</div>

<button class="btn btn-login">

<i class="fa-solid fa-right-to-bracket"></i>

 Login

</button>

</form>

<div class="footer">

© 2026 Hotel Management System

</div>

</div>

</div>

</body>

</html>