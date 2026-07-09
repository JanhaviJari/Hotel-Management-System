<%@page import="dao.BookingDAO"%>
<%@page import="model.Booking"%>

<%
int id = Integer.parseInt(request.getParameter("id"));

BookingDAO dao = new BookingDAO();

Booking booking = dao.searchBooking(id);
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Edit Booking</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-warning">

<h3>Edit Booking</h3>

</div>

<div class="card-body">

<form action="UpdateBookingServlet" method="post">

<input type="hidden"
name="bookingId"
value="<%=booking.getBookingId()%>">

<label>Customer ID</label>

<input type="number"
name="customerId"
class="form-control"
value="<%=booking.getCustomerId()%>">

<br>

<label>Room ID</label>

<input type="number"
name="roomId"
class="form-control"
value="<%=booking.getRoomId()%>">

<br>

<label>Check In</label>

<input type="date"
name="checkIn"
class="form-control"
value="<%=booking.getCheckIn()%>">

<br>

<label>Check Out</label>

<input type="date"
name="checkOut"
class="form-control"
value="<%=booking.getCheckOut()%>">

<br>

<label>Total Amount</label>

<input type="number"
step="0.01"
name="totalAmount"
class="form-control"
value="<%=booking.getTotalAmount()%>">

<br>

<button class="btn btn-success">

Update Booking

</button>

</form>

</div>

</div>

</div>

</body>

</html>