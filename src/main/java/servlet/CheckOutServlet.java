package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CheckOutDAO;
import model.CheckOut;

@WebServlet("/CheckOutServlet")
public class CheckOutServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        CheckOut checkOut = new CheckOut();

        checkOut.setBookingId(
                Integer.parseInt(request.getParameter("bookingId")));

        checkOut.setCheckOutDate(
                request.getParameter("checkOutDate"));

        CheckOutDAO dao = new CheckOutDAO();

        if (dao.addCheckOut(checkOut)) {

            response.sendRedirect("viewCheckOut.jsp");

        } else {

            response.getWriter().println("Check Out Failed!");

        }

    }

}