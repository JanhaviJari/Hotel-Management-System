<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Add Customer</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{

background:linear-gradient(135deg,#dbeafe,#f0f9ff);

font-family:'Segoe UI';

}

.card{

border:none;

border-radius:20px;

box-shadow:0 10px 30px rgba(0,0,0,.15);

}

.card-header{

background:#0d6efd;

color:white;

font-size:28px;

font-weight:bold;

text-align:center;

padding:20px;

border-radius:20px 20px 0 0;

}

.form-control,.form-select{

height:50px;

}

.btn{

height:50px;

font-size:18px;

}

.container{

margin-top:40px;

}

</style>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-lg-7">

<div class="card">

<div class="card-header">

<i class="fa-solid fa-user-plus"></i>

Add New Customer

</div>

<div class="card-body p-4">

<form action="CustomerServlet" method="post">

<div class="mb-3">

<label class="form-label">

Customer Name

</label>

<input type="text"
class="form-control"
name="customerName"
placeholder="Enter Customer Name"
required>

</div>

<div class="mb-3">

<label class="form-label">

Gender

</label>

<select class="form-select"
name="gender">

<option>Male</option>

<option>Female</option>

<option>Other</option>

</select>

</div>

<div class="mb-3">

<label class="form-label">

Phone Number

</label>

<input type="text"
class="form-control"
name="phone"
placeholder="9876543210"
required>

</div>

<div class="mb-3">

<label class="form-label">

Email

</label>

<input type="email"
class="form-control"
name="email"
placeholder="abc@gmail.com">

</div>

<div class="mb-3">

<label class="form-label">

Address

</label>

<textarea
class="form-control"
rows="3"
name="address"></textarea>

</div>

<div class="mb-4">

<label class="form-label">

ID Proof

</label>

<input type="text"
class="form-control"
name="idProof"
placeholder="Aadhar / PAN / Passport">

</div>

<div class="text-center">

<button class="btn btn-success px-5">

<i class="fa-solid fa-floppy-disk"></i>

Save Customer

</button>

<button type="reset"
class="btn btn-danger px-5">

Reset

</button>

</div>

</form>

</div>

</div>

<br>

<div class="text-center">

<a href="customer.jsp"
class="btn btn-dark">

⬅ Back

</a>

</div>

</div>

</div>

</div>

</body>

</html>