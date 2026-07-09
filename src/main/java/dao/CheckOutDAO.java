package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import database.DBConnection;
import model.CheckOut;

public class CheckOutDAO {

    // ===========================
    // Add Check Out
    // ===========================
    public boolean addCheckOut(CheckOut checkOut) {

        String query = "INSERT INTO checkout(booking_id, checkout_date) VALUES(?, ?)";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, checkOut.getBookingId());
            ps.setString(2, checkOut.getCheckOutDate());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }

    // ===========================
    // View All Check Outs
    // ===========================
    public ArrayList<CheckOut> getAllCheckOuts() {

        ArrayList<CheckOut> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement("SELECT * FROM checkout");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                CheckOut checkOut = new CheckOut();

                checkOut.setCheckOutId(rs.getInt("checkout_id"));
                checkOut.setBookingId(rs.getInt("booking_id"));
                checkOut.setCheckOutDate(rs.getString("checkout_date"));

                list.add(checkOut);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return list;
    }

    // ===========================
    // Delete Check Out
    // ===========================
    public boolean deleteCheckOut(int id) {

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM checkout WHERE checkout_id=?");

            ps.setInt(1, id);

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }

}