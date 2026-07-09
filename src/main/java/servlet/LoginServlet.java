package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals("admin") && password.equals("admin123")) {

            // Create Session
            HttpSession session = request.getSession();

            // Store Username in Session
            session.setAttribute("username", username);

            // Redirect to Dashboard
            response.sendRedirect("dashboard.jsp");

        } else {

            response.getWriter().println(
                    "<h2 style='color:red;text-align:center;margin-top:50px;'>Invalid Username or Password!</h2>"
            );

        }
    }
}