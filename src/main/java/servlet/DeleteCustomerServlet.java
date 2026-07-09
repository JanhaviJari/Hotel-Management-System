package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CustomerDAO;

@WebServlet("/DeleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int customerId = Integer.parseInt(request.getParameter("id"));

        CustomerDAO dao = new CustomerDAO();

        boolean status = dao.deleteCustomer(customerId);

        if(status){

            response.sendRedirect("viewCustomers.jsp");

        }else{

            response.getWriter().println("Customer Deletion Failed!");

        }

    }

}