<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Room</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-primary text-white">

<h3>Add New Room</h3>

</div>

<div class="card-body">

<form action="RoomServlet" method="post">

<div class="mb-3">
<label>Room Number</label>
<input type="text" name="roomNumber" class="form-control" required>
</div>

<div class="mb-3">
<label>Room Type</label>
<select name="roomType" class="form-control">
<option>Single</option>
<option>Double</option>
<option>Deluxe</option>
<option>Suite</option>
</select>
</div>

<div class="mb-3">
<label>Price</label>
<input type="number" step="0.01" name="price" class="form-control" required>
</div>

<div class="mb-3">
<label>Status</label>
<select name="status" class="form-control">
<option>Available</option>
<option>Occupied</option>
<option>Maintenance</option>
</select>
</div>

<button type="submit" class="btn btn-success">Save Room</button>
<a href="dashboard.jsp" class="btn btn-secondary">Back</a>

</form>

</div>

</div>

</div>

</body>
</html>