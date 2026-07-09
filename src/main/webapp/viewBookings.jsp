<%@page import="java.util.ArrayList"%>
<%@page import="dao.BookingDAO"%>
<%@page import="model.Booking"%>

<%
BookingDAO dao = new BookingDAO();
ArrayList<Booking> bookingList = dao.getAllBookings();
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Bookings</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-primary text-white">

<h3>Booking Details</h3>

</div>

<div class="card-body">

<a href="booking.jsp" class="btn btn-success mb-3">

+ New Booking

</a>

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>ID</th>

<th>Customer ID</th>

<th>Room ID</th>

<th>Check In</th>

<th>Check Out</th>

<th>Total Amount</th>

<th>Action</th>

</tr>

</thead>

<tbody>

<%
for(Booking booking : bookingList){
%>

<tr>

<td><%=booking.getBookingId()%></td>

<td><%=booking.getCustomerId()%></td>

<td><%=booking.getRoomId()%></td>

<td><%=booking.getCheckIn()%></td>

<td><%=booking.getCheckOut()%></td>

<td><%=booking.getTotalAmount()%></td>

<td>

<a href="editBooking.jsp?id=<%=booking.getBookingId()%>"
class="btn btn-warning btn-sm">

Edit

</a>

<a href="DeleteBookingServlet?id=<%=booking.getBookingId()%>"
class="btn btn-danger btn-sm"
onclick="return confirm('Delete this booking?')">

Delete

</a>

</td>

</tr>

<%
}
%>

</tbody>

</table>

</div>

</div>

</div>

</body>

</html>