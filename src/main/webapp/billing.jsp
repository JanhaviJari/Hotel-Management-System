<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Generate Bill</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-primary text-white">

<h3>Generate Bill</h3>

</div>

<div class="card-body">

<form action="BillingServlet" method="post">

<div class="mb-3">
<label>Booking ID</label>
<input type="number" name="bookingId" class="form-control" required>
</div>

<div class="mb-3">
<label>Customer ID</label>
<input type="number" name="customerId" class="form-control" required>
</div>

<div class="mb-3">
<label>Room ID</label>
<input type="number" name="roomId" class="form-control" required>
</div>

<div class="mb-3">
<label>Amount</label>
<input type="number" step="0.01" name="amount" class="form-control" required>
</div>

<div class="mb-3">
<label>Bill Date</label>
<input type="date" name="billDate" class="form-control" required>
</div>

<button class="btn btn-success">
Generate Bill
</button>

</form>

</div>

</div>

</div>

</body>

</html>