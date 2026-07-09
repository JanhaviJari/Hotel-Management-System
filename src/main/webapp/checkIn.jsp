<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<title>Guest Check In</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-success text-white">

<h3>Guest Check In</h3>

</div>

<div class="card-body">

<form action="CheckInServlet" method="post">

<label>Booking ID</label>

<input type="number"
name="bookingId"
class="form-control"
required>

<br>

<label>Check In Date</label>

<input type="date"
name="checkInDate"
class="form-control"
required>

<br>

<button class="btn btn-success">

Check In

</button>

</form>

</div>

</div>

</div>

</body>

</html>