package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.BillDAO;

@WebServlet("/DeleteBillServlet")
public class DeleteBillServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        BillDAO dao = new BillDAO();

        dao.deleteBill(id);

        response.sendRedirect("viewBills.jsp");

    }

}