package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.BookingDAO;

@WebServlet("/DeleteBookingServlet")
public class DeleteBookingServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        BookingDAO dao = new BookingDAO();

        dao.deleteBooking(id);

        response.sendRedirect("viewBookings.jsp");
    }

}