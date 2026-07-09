package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import database.DBConnection;

public class ReportDAO {

    // ===========================
    // Total Customers
    // ===========================
    public int getTotalCustomers() {

        int count = 0;

        String query = "SELECT COUNT(*) FROM customer";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                count = rs.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }
 // ===========================
 // Total Rooms
 // ===========================
 public int getTotalRooms() {

     int count = 0;

     String query = "SELECT COUNT(*) FROM room";

     try {

         Connection con = DBConnection.getConnection();

         PreparedStatement ps = con.prepareStatement(query);

         ResultSet rs = ps.executeQuery();

         if (rs.next()) {
             count = rs.getInt(1);
         }

     } catch (Exception e) {
         e.printStackTrace();
     }

     return count;
 }

 // ===========================
 // Total Bookings
 // ===========================
 public int getTotalBookings() {

     int count = 0;

     String query = "SELECT COUNT(*) FROM booking";

     try {

         Connection con = DBConnection.getConnection();

         PreparedStatement ps = con.prepareStatement(query);

         ResultSet rs = ps.executeQuery();

         if (rs.next()) {
             count = rs.getInt(1);
         }

     } catch (Exception e) {
         e.printStackTrace();
     }

     return count;
 }

 // ===========================
 // Total Check Ins
 // ===========================
 public int getTotalCheckIns() {

     int count = 0;

     String query = "SELECT COUNT(*) FROM checkin";

     try {

         Connection con = DBConnection.getConnection();

         PreparedStatement ps = con.prepareStatement(query);

         ResultSet rs = ps.executeQuery();

         if (rs.next()) {
             count = rs.getInt(1);
         }

     } catch (Exception e) {
         e.printStackTrace();
     }

     return count;
 }

 // ===========================
 // Total Check Outs
 // ===========================
 public int getTotalCheckOuts() {

     int count = 0;

     String query = "SELECT COUNT(*) FROM checkout";

     try {

         Connection con = DBConnection.getConnection();

         PreparedStatement ps = con.prepareStatement(query);

         ResultSet rs = ps.executeQuery();

         if (rs.next()) {
             count = rs.getInt(1);
         }

     } catch (Exception e) {
         e.printStackTrace();
     }

     return count;
 }
}
