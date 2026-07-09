<%@page import="java.util.ArrayList"%>
<%@page import="dao.CheckInDAO"%>
<%@page import="model.CheckIn"%>

<%
CheckInDAO dao = new CheckInDAO();
ArrayList<CheckIn> list = dao.getAllCheckIns();
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Check In</title>

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

.table{

background:white;

box-shadow:0 5px 15px rgba(0,0,0,.1);

}

</style>

</head>

<body>

<div class="header">

<i class="fa-solid fa-door-open"></i>

View Check Ins

</div>

<div class="container mt-4">

<table class="table table-bordered table-hover text-center">

<thead class="table-success">

<tr>

<th>Check In ID</th>
<th>Booking ID</th>
<th>Check In Date</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<%

for(CheckIn c : list){

%>

<tr>

<td><%=c.getCheckInId()%></td>

<td><%=c.getBookingId()%></td>

<td><%=c.getCheckInDate()%></td>

<td>

<a href="DeleteCheckInServlet?id=<%=c.getCheckInId()%>"
class="btn btn-danger btn-sm"
onclick="return confirm('Are you sure you want to delete this Check In?');">

<i class="fa-solid fa-trash"></i>

Delete

</a>

</td>

</tr>

<%

}

%>

</tbody>

</table>

<div class="text-center mt-4">

<a href="checkIn.jsp"
class="btn btn-primary">

<i class="fa-solid fa-plus"></i>

New Check In

</a>

<a href="dashboard.jsp"
class="btn btn-dark">

<i class="fa-solid fa-arrow-left"></i>

Back

</a>

</div>

</div>

</body>

</html>