<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Guest Check Out</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>

<style>

body{

background:#f4f6f9;

}

.card{

border:none;
border-radius:15px;

}

.card-header{

border-radius:15px 15px 0 0 !important;

}

</style>

</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow-lg">

<div class="card-header bg-danger text-white">

<h3>
<i class="fa-solid fa-right-from-bracket"></i>
Guest Check Out
</h3>

</div>

<div class="card-body">

<form action="CheckOutServlet" method="post">

<div class="mb-3">

<label class="form-label">

Booking ID

</label>

<input
type="number"
name="bookingId"
class="form-control"
placeholder="Enter Booking ID"
required>

</div>

<div class="mb-3">

<label class="form-label">

Check Out Date

</label>

<input
type="date"
name="checkOutDate"
class="form-control"
required>

</div>

<div class="d-grid">

<button
type="submit"
class="btn btn-danger">

<i class="fa-solid fa-door-open"></i>

Check Out

</button>

</div>

</form>

<br>

<a href="dashboard.jsp" class="btn btn-secondary">

<i class="fa-solid fa-arrow-left"></i>

Back to Dashboard

</a>

</div>

</div>

</div>

</div>

</div>

</body>

</html>