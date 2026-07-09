package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import database.DBConnection;
import model.Booking;

public class BookingDAO {

    // ===========================
    // Add Booking
    // ===========================
    public boolean addBooking(Booking booking) {

        String query = "INSERT INTO booking(customer_id, room_id, check_in, check_out, total_amount) VALUES (?, ?, ?, ?, ?)";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, booking.getCustomerId());
            ps.setInt(2, booking.getRoomId());
            ps.setString(3, booking.getCheckIn());
            ps.setString(4, booking.getCheckOut());
            ps.setDouble(5, booking.getTotalAmount());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    // ===========================
    // View All Bookings
    // ===========================
    public ArrayList<Booking> getAllBookings() {

        ArrayList<Booking> bookingList = new ArrayList<>();

        String query = "SELECT * FROM booking";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Booking booking = new Booking();

                booking.setBookingId(rs.getInt("booking_id"));
                booking.setCustomerId(rs.getInt("customer_id"));
                booking.setRoomId(rs.getInt("room_id"));
                booking.setCheckIn(rs.getString("check_in"));
                booking.setCheckOut(rs.getString("check_out"));
                booking.setTotalAmount(rs.getDouble("total_amount"));

                bookingList.add(booking);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bookingList;
    }

    // ===========================
    // Search Booking
    // ===========================
    public Booking searchBooking(int bookingId) {

        Booking booking = null;

        String query = "SELECT * FROM booking WHERE booking_id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, bookingId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                booking = new Booking();

                booking.setBookingId(rs.getInt("booking_id"));
                booking.setCustomerId(rs.getInt("customer_id"));
                booking.setRoomId(rs.getInt("room_id"));
                booking.setCheckIn(rs.getString("check_in"));
                booking.setCheckOut(rs.getString("check_out"));
                booking.setTotalAmount(rs.getDouble("total_amount"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return booking;
    }

    // ===========================
    // Update Booking
    // ===========================
    public boolean updateBooking(Booking booking) {

        String query = "UPDATE booking SET customer_id=?, room_id=?, check_in=?, check_out=?, total_amount=? WHERE booking_id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, booking.getCustomerId());
            ps.setInt(2, booking.getRoomId());
            ps.setString(3, booking.getCheckIn());
            ps.setString(4, booking.getCheckOut());
            ps.setDouble(5, booking.getTotalAmount());
            ps.setInt(6, booking.getBookingId());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    // ===========================
    // Delete Booking
    // ===========================
    public boolean deleteBooking(int bookingId) {

        String query = "DELETE FROM booking WHERE booking_id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, bookingId);

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}