<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
if(session.getAttribute("username")==null){

    response.sendRedirect("login.jsp");

    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Hotel Management System</title>

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
background:#eef2f7;
}

.sidebar{

position:fixed;
width:250px;
height:100vh;
background:linear-gradient(180deg,#0d6efd,#052c65);
padding-top:20px;

}

.sidebar h2{

color:white;
text-align:center;
margin-bottom:40px;

}

.sidebar a{

display:block;
padding:16px 25px;
color:white;
text-decoration:none;
font-size:18px;
transition:.3s;

}

.sidebar a:hover{

background:white;
color:#0d6efd;
padding-left:35px;

}

.main{

margin-left:250px;

}

.navbar{

background:white;
padding:15px 30px;
box-shadow:0px 2px 8px rgba(0,0,0,.1);

display:flex;
justify-content:space-between;

}

.cards{

padding:30px;

}

.card{

border:none;
border-radius:15px;
color:white;
transition:.4s;

}

.card:hover{

transform:translateY(-8px);
box-shadow:0 10px 25px rgba(0,0,0,.2);

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

.dark{
background:linear-gradient(45deg,#343a40,#000);
}

.card i{

font-size:45px;
margin-bottom:15px;

}

.card h3{

font-size:20px;

}

.btn-open{

background:white;
border:none;
color:black;
font-weight:bold;
margin-top:15px;

}

</style>

</head>

<body>

<div class="sidebar">

<h2>🏨 HMS</h2>

<a href="#"><i class="fa-solid fa-chart-line"></i> Dashboard</a>

<a href="customer.jsp"><i class="fa-solid fa-users"></i> Customers</a>

<a href="viewRooms.jsp"><i class="fa-solid fa-bed"></i> Rooms</a>

<a href="booking.jsp"><i class="fa-solid fa-calendar-check"></i> Bookings</a>

<a href="checkIn.jsp"><i class="fa-solid fa-right-to-bracket"></i> Check In</a>

<a href="checkOut.jsp"><i class="fa-solid fa-right-from-bracket"></i> Check Out</a>

<a href="billing.jsp"><i class="fa-solid fa-money-bill"></i> Billing</a>

<a href="ReportServlet"><i class="fa-solid fa-chart-column"></i> Reports</a>

<a href="LogoutServlet">
    <i class="fa-solid fa-power-off"></i> Logout
</a>

</div>

<div class="main">

<div class="navbar">

<h3>Hotel Management Dashboard</h3>

<div>

<b>Welcome Admin</b>

</div>

</div>

<div class="container-fluid cards">

<div class="row g-4">

<div class="col-md-4">

<div class="card blue p-4 text-center">

<i class="fa-solid fa-users"></i>

<h3>Customer Management</h3>

<a href="customer.jsp" class="btn btn-open">Open</a>

</div>

</div>

<div class="col-md-4">

<div class="card green p-4 text-center">

<i class="fa-solid fa-bed"></i>

<h3>Room Management</h3>

<a href="viewRooms.jsp" class="btn btn-open">Open</a>

</div>

</div>

<div class="col-md-4">

<div class="card orange p-4 text-center">

<i class="fa-solid fa-calendar-check"></i>

<h3>Booking Management</h3>

<a href="viewBookings.jsp" class="btn btn-open">Open</a>

</div>

</div>

<div class="col-md-4">

<div class="card red p-4 text-center">

<i class="fa-solid fa-door-open"></i>

<h3>Check In</h3>

<a href="checkIn.jsp" class="btn btn-open">Open</a>

</div>

</div>

<div class="col-md-4">

<div class="card purple p-4 text-center">

<i class="fa-solid fa-door-closed"></i>

<h3>Check Out</h3>

<a href="checkOut.jsp" class="btn btn-open">Open</a>

</div>

</div>

<div class="col-md-4">

<div class="card dark p-4 text-center">

<i class="fa-solid fa-file-invoice-dollar"></i>

<h3>Billing</h3>

<a href="billing.jsp" class="btn btn-open">Open</a>

</div>

</div>

</div>

</div>

</div>

</body>
</html>