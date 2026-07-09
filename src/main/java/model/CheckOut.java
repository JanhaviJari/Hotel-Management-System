package model;

public class CheckOut {

    private int checkOutId;
    private int bookingId;
    private String checkOutDate;

    public CheckOut() {}

    public int getCheckOutId() {
        return checkOutId;
    }

    public void setCheckOutId(int checkOutId) {
        this.checkOutId = checkOutId;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public String getCheckOutDate() {
        return checkOutDate;
    }

    public void setCheckOutDate(String checkOutDate) {
        this.checkOutDate = checkOutDate;
    }
}