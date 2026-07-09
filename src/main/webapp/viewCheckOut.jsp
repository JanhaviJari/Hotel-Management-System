<%@page import="java.util.ArrayList"%>
<%@page import="dao.CheckOutDAO"%>
<%@page import="model.CheckOut"%>

<%
CheckOutDAO dao = new CheckOutDAO();
ArrayList<CheckOut> list = dao.getAllCheckOuts();
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Check Out</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>

<style>

body{
background:#eef2f7;
font-family:'Segoe UI',sans-serif;
}

.header{

background:linear-gradient(90deg,#dc3545,#b02a37);

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

<i class="fa-solid fa-door-closed"></i>

View Check Outs

</div>

<div class="container mt-4">

<table class="table table-bordered table-hover text-center">

<thead class="table-danger">

<tr>

<th>Check Out ID</th>
<th>Booking ID</th>
<th>Check Out Date</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<%

for(CheckOut c : list){

%>

<tr>

<td><%=c.getCheckOutId()%></td>

<td><%=c.getBookingId()%></td>

<td><%=c.getCheckOutDate()%></td>

<td>

<a href="DeleteCheckOutServlet?id=<%=c.getCheckOutId()%>"
class="btn btn-danger btn-sm"
onclick="return confirm('Are you sure you want to delete this record?');">

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

<a href="checkOut.jsp"
class="btn btn-dark">

<i class="fa-solid fa-arrow-left"></i>

Back

</a>

</div>

</div>

</body>

</html>yes 