package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import database.DBConnection;
import model.Customer;

public class CustomerDAO {

    // ===========================
    // Add Customer
    // ===========================
    public boolean addCustomer(Customer customer) {

        String query = "INSERT INTO customer(customer_name, gender, phone, email, address, id_proof) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, customer.getCustomerName());
            ps.setString(2, customer.getGender());
            ps.setString(3, customer.getPhone());
            ps.setString(4, customer.getEmail());
            ps.setString(5, customer.getAddress());
            ps.setString(6, customer.getIdProof());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    // ===========================
    // View All Customers
    // ===========================
    public ArrayList<Customer> getAllCustomers() {

        ArrayList<Customer> customerList = new ArrayList<>();

        String query = "SELECT * FROM customer";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Customer customer = new Customer();

                customer.setCustomerId(rs.getInt("customer_id"));
                customer.setCustomerName(rs.getString("customer_name"));
                customer.setGender(rs.getString("gender"));
                customer.setPhone(rs.getString("phone"));
                customer.setEmail(rs.getString("email"));
                customer.setAddress(rs.getString("address"));
                customer.setIdProof(rs.getString("id_proof"));

                customerList.add(customer);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return customerList;
    }

    // ===========================
    // Search Customer By ID
    // ===========================
    public Customer searchCustomer(int customerId) {

        Customer customer = null;

        String query = "SELECT * FROM customer WHERE customer_id = ?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, customerId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                customer = new Customer();

                customer.setCustomerId(rs.getInt("customer_id"));
                customer.setCustomerName(rs.getString("customer_name"));
                customer.setGender(rs.getString("gender"));
                customer.setPhone(rs.getString("phone"));
                customer.setEmail(rs.getString("email"));
                customer.setAddress(rs.getString("address"));
                customer.setIdProof(rs.getString("id_proof"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return customer;
    }

    // ===========================
    // Update Customer
    // ===========================
    public boolean updateCustomer(Customer customer) {

        String query = "UPDATE customer SET customer_name=?, gender=?, phone=?, email=?, address=?, id_proof=? WHERE customer_id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, customer.getCustomerName());
            ps.setString(2, customer.getGender());
            ps.setString(3, customer.getPhone());
            ps.setString(4, customer.getEmail());
            ps.setString(5, customer.getAddress());
            ps.setString(6, customer.getIdProof());
            ps.setInt(7, customer.getCustomerId());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    // ===========================
    // Delete Customer
    // ===========================
    public boolean deleteCustomer(int customerId) {

        String query = "DELETE FROM customer WHERE customer_id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, customerId);

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}