<%@page import="dao.RoomDAO"%>
<%@page import="model.Room"%>

<%
int id = Integer.parseInt(request.getParameter("id"));

RoomDAO dao = new RoomDAO();

Room room = dao.getRoomById(id);
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Edit Room</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>

<style>

body{

background:#eef2f7;
font-family:'Segoe UI',sans-serif;

}

.card{

border:none;
border-radius:15px;
box-shadow:0 5px 15px rgba(0,0,0,.15);

}

.card-header{

background:linear-gradient(90deg,#198754,#0d6efd);
color:white;

}

</style>

</head>

<body>

<div class="container mt-5">

<div class="card">

<div class="card-header">

<h3>

<i class="fa-solid fa-bed"></i>

Edit Room

</h3>

</div>

<div class="card-body">

<form action="UpdateRoomServlet" method="post">

<input type="hidden"
name="roomId"
value="<%=room.getRoomId()%>">

<div class="mb-3">

<label class="form-label">Room Number</label>

<input type="text"
name="roomNumber"
class="form-control"
value="<%=room.getRoomNumber()%>"
required>

</div>

<div class="mb-3">

<label class="form-label">Room Type</label>

<select name="roomType"
class="form-select">

<option
<%=room.getRoomType().equals("Standard")?"selected":""%>>
Standard
</option>

<option
<%=room.getRoomType().equals("Deluxe")?"selected":""%>>
Deluxe
</option>

<option
<%=room.getRoomType().equals("Suite")?"selected":""%>>
Suite
</option>

</select>

</div>

<div class="mb-3">

<label class="form-label">Price</label>

<input type="number"
step="0.01"
name="price"
class="form-control"
value="<%=room.getPrice()%>"
required>

</div>

<div class="mb-3">

<label class="form-label">Status</label>

<select name="status"
class="form-select">

<option
<%=room.getStatus().equals("Available")?"selected":""%>>
Available
</option>

<option
<%=room.getStatus().equals("Occupied")?"selected":""%>>
Occupied
</option>

</select>

</div>

<button class="btn btn-success">

<i class="fa-solid fa-floppy-disk"></i>

Update Room

</button>

<a href="viewRooms.jsp"
class="btn btn-secondary">

Back

</a>

</form>

</div>

</div>

</div>

</body>

</html>