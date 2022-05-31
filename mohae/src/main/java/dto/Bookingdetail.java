package dto;

public class Bookingdetail {
	
	private long bookingdetailno;	// PK bigint unsigned
	private int bookingpayamount;	// 결제금액
	private String bookingpaymethod;	// 결제방법
	private String bookingpaydatetime;	// 결제일시
	private long planno;	// FK, 여정번호, int unsigned
	private long bookingno;	// FK, 예약번호, bigint unsigned
	
	
	
	@Override
	public String toString() {
		return "Bookingdetail [bookingdetailno=" + bookingdetailno + ", bookingpayamount=" + bookingpayamount
				+ ", bookingpaymethod=" + bookingpaymethod + ", bookingpaydatetime=" + bookingpaydatetime + ", planno="
				+ planno + ", bookingno=" + bookingno + "]";
	}

	public Bookingdetail() {}

	public Bookingdetail(long bookingdetailno, int bookingpayamount, String bookingpaymethod, String bookingpaydatetime,
			long planno, long bookingno) {
		super();
		this.bookingdetailno = bookingdetailno;
		this.bookingpayamount = bookingpayamount;
		this.bookingpaymethod = bookingpaymethod;
		this.bookingpaydatetime = bookingpaydatetime;
		this.planno = planno;
		this.bookingno = bookingno;
	}

	public long getBookingdetailno() {
		return bookingdetailno;
	}

	public void setBookingdetailno(long bookingdetailno) {
		this.bookingdetailno = bookingdetailno;
	}

	public int getBookingpayamount() {
		return bookingpayamount;
	}

	public void setBookingpayamount(int bookingpayamount) {
		this.bookingpayamount = bookingpayamount;
	}

	public String getBookingpaymethod() {
		return bookingpaymethod;
	}

	public void setBookingpaymethod(String bookingpaymethod) {
		this.bookingpaymethod = bookingpaymethod;
	}

	public String getBookingpaydatetime() {
		return bookingpaydatetime;
	}

	public void setBookingpaydatetime(String bookingpaydatetime) {
		this.bookingpaydatetime = bookingpaydatetime;
	}

	public long getPlanno() {
		return planno;
	}

	public void setPlanno(long planno) {
		this.planno = planno;
	}

	public long getBookingno() {
		return bookingno;
	}

	public void setBookingno(long bookingno) {
		this.bookingno = bookingno;
	}
	
}
