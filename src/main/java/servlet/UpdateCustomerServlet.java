package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CustomerDAO;
import model.Customer;

@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Customer customer = new Customer();

        customer.setCustomerId(
                Integer.parseInt(request.getParameter("customerId")));

        customer.setCustomerName(
                request.getParameter("customerName"));

        customer.setGender(
                request.getParameter("gender"));

        customer.setPhone(
                request.getParameter("phone"));

        customer.setEmail(
                request.getParameter("email"));

        customer.setAddress(
                request.getParameter("address"));

        customer.setIdProof(
                request.getParameter("idProof"));

        CustomerDAO dao = new CustomerDAO();

        boolean status = dao.updateCustomer(customer);

        if(status){

            response.sendRedirect("viewCustomers.jsp");

        }else{

            response.getWriter().println("Customer Update Failed!");

        }

    }

}