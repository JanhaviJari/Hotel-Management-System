package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BillDAO;
import model.Bill;

@WebServlet("/BillingServlet")
public class BillingServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Bill bill = new Bill();

        bill.setBookingId(Integer.parseInt(request.getParameter("bookingId")));
        bill.setCustomerId(Integer.parseInt(request.getParameter("customerId")));
        bill.setRoomId(Integer.parseInt(request.getParameter("roomId")));
        bill.setAmount(Double.parseDouble(request.getParameter("amount")));
        bill.setBillDate(request.getParameter("billDate"));

        BillDAO dao = new BillDAO();

        if (dao.addBill(bill)) {

            response.sendRedirect("viewBills.jsp");

        } else {

            response.getWriter().println("Bill Generation Failed!");

        }

    }

}