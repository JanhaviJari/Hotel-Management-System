package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import database.DBConnection;
import model.Bill;

public class BillDAO {

    // Add Bill
    public boolean addBill(Bill bill) {

        String query = "INSERT INTO bill(booking_id, customer_id, room_id, amount, bill_date) VALUES(?,?,?,?,?)";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, bill.getBookingId());
            ps.setInt(2, bill.getCustomerId());
            ps.setInt(3, bill.getRoomId());
            ps.setDouble(4, bill.getAmount());
            ps.setString(5, bill.getBillDate());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }

    // View Bills
    public ArrayList<Bill> getAllBills() {

        ArrayList<Bill> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement("SELECT * FROM bill");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Bill bill = new Bill();

                bill.setBillId(rs.getInt("bill_id"));
                bill.setBookingId(rs.getInt("booking_id"));
                bill.setCustomerId(rs.getInt("customer_id"));
                bill.setRoomId(rs.getInt("room_id"));
                bill.setAmount(rs.getDouble("amount"));
                bill.setBillDate(rs.getString("bill_date"));

                list.add(bill);
            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return list;
    }

    // Delete Bill
    public boolean deleteBill(int id) {

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM bill WHERE bill_id=?");

            ps.setInt(1, id);

            return ps.executeUpdate() > 0;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }

}