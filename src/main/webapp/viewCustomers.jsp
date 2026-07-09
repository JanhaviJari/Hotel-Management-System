<%@page import="java.util.ArrayList"%>
<%@page import="dao.CustomerDAO"%>
<%@page import="model.Customer"%>

<%
CustomerDAO dao = new CustomerDAO();
ArrayList<Customer> list = dao.getAllCustomers();
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>View Customers</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
background:#eef2f7;
font-family:'Segoe UI',sans-serif;
}

.header{
background:linear-gradient(90deg,#0d6efd,#4f9cf9);
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

.btn-action{
margin-right:5px;
}

.search-box{
max-width:350px;
}

</style>

</head>

<body>

<div class="header">

<i class="fa-solid fa-users"></i>

Customer Records

</div>

<div class="container mt-4">

<div class="d-flex justify-content-between mb-3">

<input type="text"
class="form-control search-box"
placeholder="🔍 Search Customer">

<a href="addCustomer.jsp"
class="btn btn-success">

<i class="fa-solid fa-user-plus"></i>

Add Customer

</a>

</div>

<table class="table table-bordered table-hover text-center align-middle">

<thead class="table-primary">

<tr>

<th>ID</th>
<th>Name</th>
<th>Gender</th>
<th>Phone</th>
<th>Email</th>
<th>Address</th>
<th>ID Proof</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<%
for(Customer c : list){
%>

<tr>

<td><%=c.getCustomerId()%></td>

<td><%=c.getCustomerName()%></td>

<td><%=c.getGender()%></td>

<td><%=c.getPhone()%></td>

<td><%=c.getEmail()%></td>

<td><%=c.getAddress()%></td>

<td><%=c.getIdProof()%></td>

<td>

<a href="editCustomer.jsp?id=<%=c.getCustomerId()%>"
class="btn btn-warning btn-sm btn-action">

<i class="fa-solid fa-pen"></i>

Update

</a>

<a href="DeleteCustomerServlet?id=<%=c.getCustomerId()%>"
class="btn btn-danger btn-sm"
onclick="return confirm('Are you sure you want to delete this customer?');">

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

<a href="customer.jsp"
class="btn btn-dark">

<i class="fa-solid fa-arrow-left"></i>

Back

</a>

</div>

</div>

</body>

</html>