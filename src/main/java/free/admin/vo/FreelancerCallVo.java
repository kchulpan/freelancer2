package free.admin.vo;

public class FreelancerCallVo {
	private String charge_id;
	private String charge_nm;
	private String freeln_id;
	private int call_num;
	private String call_date;
	private String call_note;
	private String in_enable_date;
	
	//getter setter
	public String getCharge_id() {
		return charge_id;
	}
	public void setCharge_id(String charge_id) {
		this.charge_id = charge_id;
	}
	public String getCharge_nm() {
		return charge_nm;
	}
	public void setCharge_nm(String charge_nm) {
		this.charge_nm = charge_nm;
	}
	public String getFreeln_id() {
		return freeln_id;
	}
	public void setFreeln_id(String freeln_id) {
		this.freeln_id = freeln_id;
	}
	public int getCall_num() {
		return call_num;
	}
	public void setCall_num(int call_num) {
		this.call_num = call_num;
	}
	public String getCall_date() {
		return call_date;
	}
	public void setCall_date(String call_date) {
		this.call_date = call_date;
	}
	public String getCall_note() {
		return call_note;
	}
	public void setCall_note(String call_note) {
		this.call_note = call_note;
	}
	public String getIn_enable_date() {
		return in_enable_date;
	}
	public void setIn_enable_date(String in_enable_date) {
		this.in_enable_date = in_enable_date;
	}
	
	//constructor
	public FreelancerCallVo() {}
	public FreelancerCallVo(String charge_id, String charge_nm, String freeln_id, int call_num, String call_date,
			String call_note, String in_enable_date) {
		super();
		this.charge_id = charge_id;
		this.charge_nm = charge_nm;
		this.freeln_id = freeln_id;
		this.call_num = call_num;
		this.call_date = call_date;
		this.call_note = call_note;
		this.in_enable_date = in_enable_date;
	}
	
	
}
