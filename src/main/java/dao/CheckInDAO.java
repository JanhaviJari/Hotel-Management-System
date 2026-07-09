package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import database.DBConnection;
import model.CheckIn;

public class CheckInDAO {

    // ===========================
    // Add Check In
    // ===========================
    public boolean addCheckIn(CheckIn checkIn) {

        String query = "INSERT INTO checkin(booking_id, checkin_date) VALUES(?, ?)";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, checkIn.getBookingId());
            ps.setString(2, checkIn.getCheckInDate());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }

    // ===========================
    // View All Check Ins
    // ===========================
    public ArrayList<CheckIn> getAllCheckIns() {

        ArrayList<CheckIn> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM checkin");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                CheckIn checkIn = new CheckIn();

                checkIn.setCheckInId(rs.getInt("checkin_id"));
                checkIn.setBookingId(rs.getInt("booking_id"));
                checkIn.setCheckInDate(rs.getString("checkin_date"));

                list.add(checkIn);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return list;
    }

    // ===========================
    // Delete Check In
    // ===========================
    public boolean deleteCheckIn(int id) {

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(
                    "DELETE FROM checkin WHERE checkin_id=?");

            ps.setInt(1, id);

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }

}