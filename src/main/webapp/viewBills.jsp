<%@page import="java.util.ArrayList"%>
<%@page import="dao.BillDAO"%>
<%@page import="model.Bill"%>

<%
BillDAO dao = new BillDAO();
ArrayList<Bill> billList = dao.getAllBills();
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Bills</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-primary text-white">

<h3>Billing Details</h3>

</div>

<div class="card-body">

<a href="billing.jsp" class="btn btn-success mb-3">

Generate New Bill

</a>

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>Bill ID</th>
<th>Booking ID</th>
<th>Customer ID</th>
<th>Room ID</th>
<th>Amount</th>
<th>Bill Date</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<%
for(Bill bill : billList){
%>

<tr>

<td><%=bill.getBillId()%></td>
<td><%=bill.getBookingId()%></td>
<td><%=bill.getCustomerId()%></td>
<td><%=bill.getRoomId()%></td>
<td>₹ <%=bill.getAmount()%></td>
<td><%=bill.getBillDate()%></td>

<td>

<a href="DeleteBillServlet?id=<%=bill.getBillId()%>"
class="btn btn-danger btn-sm"
onclick="return confirm('Delete this bill?')">

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