<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<title>Book Room</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-primary text-white">

<h3>Room Booking</h3>

</div>

<div class="card-body">

<form action="BookingServlet" method="post">

<label>Customer ID</label>

<input
type="number"
name="customerId"
class="form-control"
required>

<br>

<label>Room ID</label>

<input
type="number"
name="roomId"
class="form-control"
required>

<br>

<label>Check In</label>

<input
type="date"
name="checkIn"
class="form-control"
required>

<br>

<label>Check Out</label>

<input
type="date"
name="checkOut"
class="form-control"
required>

<br>

<label>Total Amount</label>

<input
type="number"
step="0.01"
name="totalAmount"
class="form-control"
required>

<br>

<label>Status</label>

<select
name="bookingStatus"
class="form-control">

<option>Booked</option>

<option>Checked In</option>

<option>Checked Out</option>

</select>

<br>

<button class="btn btn-success">

Book Room

</button>

</form>

</div>

</div>

</div>

</body>

</html>