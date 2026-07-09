<%@page import="dao.CustomerDAO"%>
<%@page import="model.Customer"%>

<%
int id = Integer.parseInt(request.getParameter("id"));

CustomerDAO dao = new CustomerDAO();

Customer customer = dao.searchCustomer(id);
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Edit Customer</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-warning text-dark">

<h3>Edit Customer</h3>

</div>

<div class="card-body">

<form action="UpdateCustomerServlet" method="post">

<input type="hidden"
name="customerId"
value="<%=customer.getCustomerId()%>">

<label>Name</label>

<input type="text"
class="form-control"
name="customerName"
value="<%=customer.getCustomerName()%>">

<br>

<label>Gender</label>

<input type="text"
class="form-control"
name="gender"
value="<%=customer.getGender()%>">

<br>

<label>Phone</label>

<input type="text"
class="form-control"
name="phone"
value="<%=customer.getPhone()%>">

<br>

<label>Email</label>

<input type="email"
class="form-control"
name="email"
value="<%=customer.getEmail()%>">

<br>

<label>Address</label>

<textarea class="form-control"
name="address"><%=customer.getAddress()%></textarea>

<br>

<label>ID Proof</label>

<input type="text"
class="form-control"
name="idProof"
value="<%=customer.getIdProof()%>">

<br>

<button class="btn btn-success">

Update Customer

</button>

</form>

</div>

</div>

</div>

</body>

</html>