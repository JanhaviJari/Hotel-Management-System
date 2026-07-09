<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Customer Management</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
background:#eef2f7;
font-family:Segoe UI;
}

.header{

background:linear-gradient(45deg,#0d6efd,#3b82f6);

color:white;

padding:20px;

text-align:center;

font-size:30px;

font-weight:bold;

box-shadow:0 4px 10px gray;

}

.container{

margin-top:60px;

}

.card{

border:none;

border-radius:20px;

transition:.4s;

box-shadow:0 5px 15px rgba(0,0,0,.15);

}

.card:hover{

transform:translateY(-8px);

}

.card i{

font-size:60px;

margin-bottom:20px;

color:#0d6efd;

}

.btn{

width:180px;

}

</style>

</head>

<body>

<div class="header">

👤 Customer Management

</div>

<div class="container">

<div class="row justify-content-center g-5">

<div class="col-md-4">

<div class="card p-5 text-center">

<i class="fa-solid fa-user-plus"></i>

<h3>Add Customer</h3>

<p>Add new hotel customer.</p>

<a href="addCustomer.jsp" class="btn btn-success">

Open

</a>

</div>

</div>

<div class="col-md-4">

<div class="card p-5 text-center">

<i class="fa-solid fa-users"></i>

<h3>View Customers</h3>

<p>Display all customer records.</p>

<a href="viewCustomers.jsp" class="btn btn-primary">

Open

</a>

</div>

</div>

</div>

<br>

<div class="text-center">

<a href="dashboard.jsp" class="btn btn-dark">

⬅ Back to Dashboard

</a>

</div>

</div>

</body>

</html>