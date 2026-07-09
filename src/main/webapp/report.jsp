<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Hotel Report</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>

<style>

body{

background:#eef2f7;
font-family:'Segoe UI',sans-serif;

}

.header{

background:linear-gradient(90deg,#0d6efd,#198754);

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

color:white;

transition:.3s;

box-shadow:0 5px 15px rgba(0,0,0,.15);

}

.card:hover{

transform:translateY(-8px);

}

.number{

font-size:40px;

font-weight:bold;

margin-top:10px;

}

.blue{

background:linear-gradient(45deg,#4e73df,#224abe);

}

.green{

background:linear-gradient(45deg,#1cc88a,#13855c);

}

.orange{

background:linear-gradient(45deg,#f6c23e,#dda20a);

}

.red{

background:linear-gradient(45deg,#e74a3b,#be2617);

}

.purple{

background:linear-gradient(45deg,#6f42c1,#4b2a8d);

}

</style>

</head>

<body>

<div class="header">

<i class="fa-solid fa-chart-column"></i>

Hotel Reports

</div>

<div class="container mt-5">

<div class="row g-4">

<div class="col-md-4">

<div class="card blue p-4 text-center">

<h4>Total Customers</h4>

<div class="number">

<%=request.getAttribute("customers")%>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card green p-4 text-center">

<h4>Total Rooms</h4>

<div class="number">

<%=request.getAttribute("rooms")%>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card orange p-4 text-center">

<h4>Total Bookings</h4>

<div class="number">

<%=request.getAttribute("bookings")%>

</div>

</div>

</div>

<div class="col-md-6">

<div class="card red p-4 text-center">

<h4>Total Check Ins</h4>

<div class="number">

<%=request.getAttribute("checkins")%>

</div>

</div>

</div>

<div class="col-md-6">

<div class="card purple p-4 text-center">

<h4>Total Check Outs</h4>

<div class="number">

<%=request.getAttribute("checkouts")%>

</div>

</div>

</div>

</div>

<div class="text-center mt-5">

<a href="dashboard.jsp"
class="btn btn-dark">

<i class="fa-solid fa-arrow-left"></i>

Back to Dashboard

</a>

</div>

</div>

</body>

</html>