package free.admin.vo;

public class FreelancerListVo {
	private String freeln_id;
	private String freeln_nm;
	private String freeln_phone;
	private String freeln_tel;
	private String freen_mail;
	private String freen_addr_1;
	private String freen_addr_2;
	private String hope_place;
	private String hope_money;
	private String hope_call_str_time;
	private String hope_call_end_time;
	private String major_tech;
	private String note;
	private String img_nm;
	private String in_enable_date;
	private String insert_id;
	private String insert_date;
	private String update_id;
	private String update_date;
	private String career_year;
	
	//getter setter
	public String getFreeln_id() {
		return freeln_id;
	}
	public void setFreeln_id(String freeln_id) {
		this.freeln_id = freeln_id;
	}
	public String getFreeln_nm() {
		return freeln_nm;
	}
	public void setFreeln_nm(String freeln_nm) {
		this.freeln_nm = freeln_nm;
	}
	public String getFreeln_phone() {
		return freeln_phone;
	}
	public void setFreeln_phone(String freeln_phone) {
		this.freeln_phone = freeln_phone;
	}
	public String getFreeln_tel() {
		return freeln_tel;
	}
	public void setFreeln_tel(String freeln_tel) {
		this.freeln_tel = freeln_tel;
	}
	public String getFreen_mail() {
		return freen_mail;
	}
	public void setFreen_mail(String freen_mail) {
		this.freen_mail = freen_mail;
	}
	public String getFreen_addr_1() {
		return freen_addr_1;
	}
	public void setFreen_addr_1(String freen_addr_1) {
		this.freen_addr_1 = freen_addr_1;
	}
	public String getFreen_addr_2() {
		return freen_addr_2;
	}
	public void setFreen_addr_2(String freen_addr_2) {
		this.freen_addr_2 = freen_addr_2;
	}
	public String getHope_place() {
		return hope_place;
	}
	public void setHope_place(String hope_place) {
		this.hope_place = hope_place;
	}
	public String getHope_money() {
		return hope_money;
	}
	public void setHope_money(String hope_money) {
		this.hope_money = hope_money;
	}
	public String getHope_call_str_time() {
		return hope_call_str_time;
	}
	public void setHope_call_str_time(String hope_call_str_time) {
		this.hope_call_str_time = hope_call_str_time;
	}
	public String getHope_call_end_time() {
		return hope_call_end_time;
	}
	public void setHope_call_end_time(String hope_call_end_time) {
		this.hope_call_end_time = hope_call_end_time;
	}
	public String getMajor_tech() {
		return major_tech;
	}
	public void setMajor_tech(String major_tech) {
		this.major_tech = major_tech;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getImg_nm() {
		return img_nm;
	}
	public void setImg_nm(String img_nm) {
		this.img_nm = img_nm;
	}
	public String getIn_enable_date() {
		return in_enable_date;
	}
	public void setIn_enable_date(String in_enable_date) {
		this.in_enable_date = in_enable_date;
	}
	public String getInsert_id() {
		return insert_id;
	}
	public void setInsert_id(String insert_id) {
		this.insert_id = insert_id;
	}
	public String getInsert_date() {
		return insert_date;
	}
	public void setInsert_date(String insert_date) {
		this.insert_date = insert_date;
	}
	public String getUpdate_id() {
		return update_id;
	}
	public void setUpdate_id(String update_id) {
		this.update_id = update_id;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	
	public String getCareer_year() {
		return career_year;
	}
	
	public void setCareer_year(String career_year) {
		this.career_year = career_year;
	}
	//constructor
	public FreelancerListVo() {}
	public FreelancerListVo(String freeln_id, String freeln_nm, String freeln_phone, String freeln_tel,
			String freen_mail, String freen_addr_1, String freen_addr_2, String hope_place, String hope_money,
			String hope_call_str_time, String hope_call_end_time, String major_tech, String note, String img_nm,
			String in_enable_date, String insert_id, String insert_date, String update_id, String update_date,
			String career_year) {
		super();
		this.freeln_id = freeln_id;
		this.freeln_nm = freeln_nm;
		this.freeln_phone = freeln_phone;
		this.freeln_tel = freeln_tel;
		this.freen_mail = freen_mail;
		this.freen_addr_1 = freen_addr_1;
		this.freen_addr_2 = freen_addr_2;
		this.hope_place = hope_place;
		this.hope_money = hope_money;
		this.hope_call_str_time = hope_call_str_time;
		this.hope_call_end_time = hope_call_end_time;
		this.major_tech = major_tech;
		this.note = note;
		this.img_nm = img_nm;
		this.in_enable_date = in_enable_date;
		this.insert_id = insert_id;
		this.insert_date = insert_date;
		this.update_id = update_id;
		this.update_date = update_date;
		this.career_year = career_year;
	}
	
	@Override
	public String toString() {
		return "FreelancerListVo [freeln_id=" + freeln_id + ", freeln_nm=" + freeln_nm + ", freeln_phone="
				+ freeln_phone + ", freeln_tel=" + freeln_tel + ", freen_mail=" + freen_mail + ", freen_addr_1="
				+ freen_addr_1 + ", freen_addr_2=" + freen_addr_2 + ", hope_place=" + hope_place + ", hope_money="
				+ hope_money + ", hope_call_str_time=" + hope_call_str_time + ", hope_call_end_time="
				+ hope_call_end_time + ", major_tech=" + major_tech + ", note=" + note + ", img_nm=" + img_nm
				+ ", in_enable_date=" + in_enable_date + ", insert_id=" + insert_id + ", insert_date=" + insert_date
				+ ", update_id=" + update_id + ", update_date=" + update_date + ", career_year=" + career_year + "]";
	}

	
	
}
