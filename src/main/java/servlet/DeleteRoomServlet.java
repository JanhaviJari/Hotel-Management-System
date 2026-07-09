package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RoomDAO;

@WebServlet("/DeleteRoomServlet")
public class DeleteRoomServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int roomId = Integer.parseInt(request.getParameter("id"));

        RoomDAO dao = new RoomDAO();

        if (dao.deleteRoom(roomId)) {

            response.sendRedirect("viewRooms.jsp");

        } else {

            response.getWriter().println("Room Delete Failed!");

        }

    }

}