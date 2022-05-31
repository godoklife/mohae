package dto;

public class Booking {
	
	private long bookingno;	// PK, bigint unsigned
	private int bookingpeopleamount;	// tinyint
	private String bookingdatetime;
	private int memberno;	// FK
	
	public String toString() {return super.toString();}
	
	public Booking() {}

	public Booking(long bookingno, int bookingpeopleamount, String bookingdatetime, int memberno) {
		super();
		this.bookingno = bookingno;
		this.bookingpeopleamount = bookingpeopleamount;
		this.bookingdatetime = bookingdatetime;
		this.memberno = memberno;
	}

	public long getBookingno() {
		return bookingno;
	}

	public void setBookingno(long bookingno) {
		this.bookingno = bookingno;
	}

	public int getBookingpeopleamount() {
		return bookingpeopleamount;
	}

	public void setBookingpeopleamount(int bookingpeopleamount) {
		this.bookingpeopleamount = bookingpeopleamount;
	}

	public String getBookingdatetime() {
		return bookingdatetime;
	}

	public void setBookingdatetime(String bookingdatetime) {
		this.bookingdatetime = bookingdatetime;
	}

	public int getMemberno() {
		return memberno;
	}

	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	
	
}
