<%@page import="java.util.ArrayList"%>
<%@page import="dao.RoomDAO"%>
<%@page import="model.Room"%>

<%
RoomDAO dao = new RoomDAO();
ArrayList<Room> rooms = dao.getAllRooms();
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>View Rooms</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<h2 class="text-center mb-4">Room Details</h2>

<a href="addRoom.jsp" class="btn btn-success mb-3">
Add Room
</a>

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>ID</th>
<th>Room No</th>
<th>Type</th>
<th>Price</th>
<th>Status</th>

</tr>

</thead>

<tbody>

<%
for(Room room : rooms){
%>

<tr>

<td><%=room.getRoomId()%></td>

<td><%=room.getRoomNumber()%></td>

<td><%=room.getRoomType()%></td>

<td>Rs. <%=room.getPrice()%></td>

<td><%=room.getStatus()%></td>

</tr>

<%
}
%>

</tbody>

</table>

<a href="dashboard.jsp" class="btn btn-secondary">
Back to Dashboard
</a>

</div>

</body>
</html>