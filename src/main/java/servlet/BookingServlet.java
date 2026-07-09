package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookingDAO;
import model.Booking;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Booking booking = new Booking();

        booking.setCustomerId(
                Integer.parseInt(request.getParameter("customerId")));

        booking.setRoomId(
                Integer.parseInt(request.getParameter("roomId")));

        booking.setCheckIn(
                request.getParameter("checkIn"));

        booking.setCheckOut(
                request.getParameter("checkOut"));

        booking.setTotalAmount(
                Double.parseDouble(request.getParameter("totalAmount")));

        BookingDAO dao = new BookingDAO();

        if (dao.addBooking(booking)) {

            response.sendRedirect("viewBookings.jsp");

        } else {

            response.getWriter().println("Booking Failed!");

        }

    }

}