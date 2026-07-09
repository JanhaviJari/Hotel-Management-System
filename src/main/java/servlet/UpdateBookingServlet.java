package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.BookingDAO;
import model.Booking;

@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Booking booking = new Booking();

        booking.setBookingId(
                Integer.parseInt(request.getParameter("bookingId")));

        booking.setCustomerId(
                Integer.parseInt(request.getParameter("customerId")));

        booking.setRoomId(
                Integer.parseInt(request.getParameter("roomId")));

        booking.setCheckIn(request.getParameter("checkIn"));

        booking.setCheckOut(request.getParameter("checkOut"));

        booking.setTotalAmount(
                Double.parseDouble(request.getParameter("totalAmount")));

        BookingDAO dao = new BookingDAO();

        if (dao.updateBooking(booking)) {

            response.sendRedirect("viewBookings.jsp");

        } else {

            response.getWriter().println("Booking Update Failed!");

        }

    }

}