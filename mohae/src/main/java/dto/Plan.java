package dto;

public class Plan {
	
	private int pno;
	private String ptitle;
	private String pcontent;
	private int pcategoryno;
	private int memberno;
	private String pfile;
	private int pview;
	private String pmapname;
	private int pamount;
	private String pdate;
	public Plan() {}
	public Plan(int pno, String ptitle, String pcontent, int pcategoryno, int memberno, String pfile, int pview,
			String pmapname, int pamount, String pdate) {
		super();
		this.pno = pno;
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.pcategoryno = pcategoryno;
		this.memberno = memberno;
		this.pfile = pfile;
		this.pview = pview;
		this.pmapname = pmapname;
		this.pamount = pamount;
		this.pdate = pdate;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public int getPcategoryno() {
		return pcategoryno;
	}
	public void setPcategoryno(int pcategoryno) {
		this.pcategoryno = pcategoryno;
	}
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public String getPfile() {
		return pfile;
	}
	public void setPfile(String pfile) {
		this.pfile = pfile;
	}
	public int getPview() {
		return pview;
	}
	public void setPview(int pview) {
		this.pview = pview;
	}
	public String getPmapname() {
		return pmapname;
	}
	public void setPmapname(String pmapname) {
		this.pmapname = pmapname;
	}
	public int getPamount() {
		return pamount;
	}
	public void setPamount(int pamount) {
		this.pamount = pamount;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	@Override
	public String toString() {
		return "Plan [pno=" + pno + ", ptitle=" + ptitle + ", pcontent=" + pcontent + ", pcategoryno=" + pcategoryno
				+ ", memberno=" + memberno + ", pfile=" + pfile + ", pview=" + pview + ", pmapname=" + pmapname
				+ ", pamount=" + pamount + ", pdate=" + pdate + "]";
	}
	
	
	
}
