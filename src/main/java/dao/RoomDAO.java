package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import database.DBConnection;
import model.Room;

public class RoomDAO {

    // ===========================
    // Add Room
    // ===========================
    public boolean addRoom(Room room) {

        String query = "INSERT INTO room(room_number, room_type, price, status) VALUES (?, ?, ?, ?)";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, room.getRoomNumber());
            ps.setString(2, room.getRoomType());
            ps.setDouble(3, room.getPrice());
            ps.setString(4, room.getStatus());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    // ===========================
    // View All Rooms
    // ===========================
    public ArrayList<Room> getAllRooms() {

        ArrayList<Room> roomList = new ArrayList<>();

        String query = "SELECT * FROM room";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Room room = new Room();

                room.setRoomId(rs.getInt("room_id"));
                room.setRoomNumber(rs.getString("room_number"));
                room.setRoomType(rs.getString("room_type"));
                room.setPrice(rs.getDouble("price"));
                room.setStatus(rs.getString("status"));

                roomList.add(room);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return roomList;
    }

    // ===========================
    // Search Room
    // ===========================
    public Room searchRoom(int roomId) {

        Room room = null;

        String query = "SELECT * FROM room WHERE room_id = ?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, roomId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                room = new Room();

                room.setRoomId(rs.getInt("room_id"));
                room.setRoomNumber(rs.getString("room_number"));
                room.setRoomType(rs.getString("room_type"));
                room.setPrice(rs.getDouble("price"));
                room.setStatus(rs.getString("status"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return room;
    }

    // ===========================
    // Update Room
    // ===========================
    public boolean updateRoom(Room room) {

        String query = "UPDATE room SET room_number=?, room_type=?, price=?, status=? WHERE room_id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, room.getRoomNumber());
            ps.setString(2, room.getRoomType());
            ps.setDouble(3, room.getPrice());
            ps.setString(4, room.getStatus());
            ps.setInt(5, room.getRoomId());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
 // ===========================
 // Get Room By ID
 // ===========================
 public Room getRoomById(int id) {

     Room room = null;

     String query = "SELECT * FROM room WHERE room_id=?";

     try {

         Connection con = DBConnection.getConnection();

         PreparedStatement ps = con.prepareStatement(query);

         ps.setInt(1, id);

         ResultSet rs = ps.executeQuery();

         if(rs.next()){

             room = new Room();

             room.setRoomId(rs.getInt("room_id"));
             room.setRoomNumber(rs.getString("room_number"));
             room.setRoomType(rs.getString("room_type"));
             room.setPrice(rs.getDouble("price"));
             room.setStatus(rs.getString("status"));

         }

     }catch(Exception e){

         e.printStackTrace();

     }

     return room;
 }

    // ===========================
    // Delete Room
    // ===========================
    public boolean deleteRoom(int roomId) {

        String query = "DELETE FROM room WHERE room_id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, roomId);

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
 // ===========================
 // Check In (Update Room Status)
 // ===========================
 public boolean checkInRoom(int roomId) {

     String query = "UPDATE room SET status='Occupied' WHERE room_id=?";

     try {

         Connection con = DBConnection.getConnection();

         PreparedStatement ps = con.prepareStatement(query);

         ps.setInt(1, roomId);

         int rows = ps.executeUpdate();

         return rows > 0;

     } catch (Exception e) {
         e.printStackTrace();
     }

     return false;
 }
//===========================
//Check Out (Update Room Status)
//===========================
public boolean checkOutRoom(int roomId) {

  String query = "UPDATE room SET status='Available' WHERE room_id=?";

  try {

      Connection con = DBConnection.getConnection();

      PreparedStatement ps = con.prepareStatement(query);

      ps.setInt(1, roomId);

      int rows = ps.executeUpdate();

      return rows > 0;

  } catch (Exception e) {
      e.printStackTrace();
  }

  return false;
}
//===========================
//Get Room Price
//===========================
public double getRoomPrice(int roomId) {

 double price = 0;

 String query = "SELECT price FROM room WHERE room_id=?";

 try {

     Connection con = DBConnection.getConnection();

     PreparedStatement ps = con.prepareStatement(query);

     ps.setInt(1, roomId);

     ResultSet rs = ps.executeQuery();

     if (rs.next()) {
         price = rs.getDouble("price");
     }

 } catch (Exception e) {
     e.printStackTrace();
 }

 return price;
}
//===========================
//Check Room Availability
//===========================
public boolean isRoomAvailable(int roomId) {

 String query = "SELECT status FROM room WHERE room_id = ?";

 try {

     Connection con = DBConnection.getConnection();

     PreparedStatement ps = con.prepareStatement(query);

     ps.setInt(1, roomId);

     ResultSet rs = ps.executeQuery();

     if (rs.next()) {

         String status = rs.getString("status");

         return status.equalsIgnoreCase("Available");
     }

 } catch (Exception e) {
     e.printStackTrace();
 }

 return false;
}
//===========================
//Update Room Status
//===========================
public boolean updateRoomStatus(int roomId, String status) {

 String query = "UPDATE room SET status=? WHERE room_id=?";

 try {

     Connection con = DBConnection.getConnection();

     PreparedStatement ps = con.prepareStatement(query);

     ps.setString(1, status);
     ps.setInt(2, roomId);

     int rows = ps.executeUpdate();

     return rows > 0;

 } catch (Exception e) {
     e.printStackTrace();
 }

 return false;
}
}