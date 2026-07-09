package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RoomDAO;
import model.Room;

@WebServlet("/UpdateRoomServlet")
public class UpdateRoomServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Room room = new Room();

        room.setRoomId(
                Integer.parseInt(request.getParameter("roomId")));

        room.setRoomNumber(
                request.getParameter("roomNumber"));

        room.setRoomType(
                request.getParameter("roomType"));

        room.setPrice(
                Double.parseDouble(request.getParameter("price")));

        room.setStatus(
                request.getParameter("status"));

        RoomDAO dao = new RoomDAO();

        if (dao.updateRoom(room)) {

            response.sendRedirect("viewRooms.jsp");

        } else {

            response.getWriter().println("Room Update Failed!");

        }

    }

}