package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CheckInDAO;

@WebServlet("/DeleteCheckInServlet")
public class DeleteCheckInServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        CheckInDAO dao = new CheckInDAO();

        if (dao.deleteCheckIn(id)) {

            response.sendRedirect("viewCheckIn.jsp");

        } else {

            response.getWriter().println("Check In Delete Failed!");

        }

    }

}