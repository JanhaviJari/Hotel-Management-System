<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Room Management</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>

<style>

body{
background:#eef2f7;
font-family:'Segoe UI',sans-serif;
}

.header{

background:linear-gradient(90deg,#198754,#0d6efd);

color:white;

padding:20px;

font-size:30px;

font-weight:bold;

text-align:center;

box-shadow:0 3px 10px gray;

}

.card{

border:none;

border-radius:15px;

box-shadow:0 5px 15px rgba(0,0,0,.15);

transition:.3s;

}

.card:hover{

transform:translateY(-8px);

}

.icon{

font-size:55px;

margin-bottom:15px;

color:#198754;

}

</style>

</head>

<body>

<div class="header">

<i class="fa-solid fa-bed"></i>

Room Management

</div>

<div class="container mt-5">

<div class="row justify-content-center g-4">

<div class="col-md-4">

<div class="card text-center p-4">

<div class="icon">

<i class="fa-solid fa-bed"></i>

</div>

<h3>Add Room</h3>

<p>Add a new room to the hotel.</p>

<a href="addRoom.jsp" class="btn btn-success">

<i class="fa-solid fa-plus"></i>

Add Room

</a>

</div>

</div>

<div class="col-md-4">

<div class="card text-center p-4">

<div class="icon">

<i class="fa-solid fa-list"></i>

</div>

<h3>View Rooms</h3>

<p>View, update and delete room details.</p>

<a href="viewRooms.jsp" class="btn btn-primary">

<i class="fa-solid fa-eye"></i>

View Rooms

</a>

</div>

</div>

</div>

<div class="text-center mt-5">

<a href="dashboard.jsp" class="btn btn-dark">

<i class="fa-solid fa-arrow-left"></i>

Back to Dashboard

</a>

</div>

</div>

</body>
</html>