package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.ReportDAO;

@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        ReportDAO dao = new ReportDAO();

        request.setAttribute("customers", dao.getTotalCustomers());
        request.setAttribute("rooms", dao.getTotalRooms());
        request.setAttribute("bookings", dao.getTotalBookings());
        request.setAttribute("checkins", dao.getTotalCheckIns());
        request.setAttribute("checkouts", dao.getTotalCheckOuts());

        request.getRequestDispatcher("report.jsp").forward(request, response);
    }
}