package free.admin.vo;

public class FreelancerCareerVo {
	private String freeln_id;
	private String freeln_nm;
	private String freeln_phone;
	private int    career_num;
	private String client_nm;
	private String client_loca_1;
	private String client_loca_2;
	private String duty;
	private String task;
	private String work_str_date;
	private String work_end_date;
	private String contents;
	private String use_tech_1;
	private String use_tech_2;
	private String work_money;
	private String insert_id;
	private String insert_date;
	private String update_id;
	private String update_date;
	
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
	public int getCareer_num() {
		return career_num;
	}
	public void setCareer_num(int career_num) {
		this.career_num = career_num;
	}
	public String getClient_nm() {
		return client_nm;
	}
	public void setClient_nm(String client_nm) {
		this.client_nm = client_nm;
	}
	public String getClient_loca_1() {
		return client_loca_1;
	}
	public void setClient_loca_1(String client_loca_1) {
		this.client_loca_1 = client_loca_1;
	}
	public String getClient_loca_2() {
		return client_loca_2;
	}
	public void setClient_loca_2(String client_loca_2) {
		this.client_loca_2 = client_loca_2;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public String getTask() {
		return task;
	}
	public void setTask(String task) {
		this.task = task;
	}
	public String getWork_str_date() {
		return work_str_date;
	}
	public void setWork_str_date(String work_str_date) {
		this.work_str_date = work_str_date;
	}
	public String getWork_end_date() {
		return work_end_date;
	}
	public void setWork_end_date(String work_end_date) {
		this.work_end_date = work_end_date;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getUse_tech_1() {
		return use_tech_1;
	}
	public void setUse_tech_1(String use_tech_1) {
		this.use_tech_1 = use_tech_1;
	}
	public String getUse_tech_2() {
		return use_tech_2;
	}
	public void setUse_tech_2(String use_tech_2) {
		this.use_tech_2 = use_tech_2;
	}
	public String getWork_money() {
		return work_money;
	}
	public void setWork_money(String work_money) {
		this.work_money = work_money;
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
	
	public String getFreeln_phone() {
		return freeln_phone;
	}
	public void setFreeln_phone(String freeln_phone) {
		this.freeln_phone = freeln_phone;
	}
	//constructor
	public FreelancerCareerVo() {}
	public FreelancerCareerVo(String freeln_id, String freeln_nm, String freeln_phone, int career_num, String client_nm,
			String client_loca_1, String client_loca_2, String duty, String task, String work_str_date,
			String work_end_date, String contents, String use_tech_1, String use_tech_2, String work_money,
			String insert_id, String insert_date, String update_id, String update_date) {
		super();
		this.freeln_id = freeln_id;
		this.freeln_nm = freeln_nm;
		this.freeln_phone = freeln_phone;
		this.career_num = career_num;
		this.client_nm = client_nm;
		this.client_loca_1 = client_loca_1;
		this.client_loca_2 = client_loca_2;
		this.duty = duty;
		this.task = task;
		this.work_str_date = work_str_date;
		this.work_end_date = work_end_date;
		this.contents = contents;
		this.use_tech_1 = use_tech_1;
		this.use_tech_2 = use_tech_2;
		this.work_money = work_money;
		this.insert_id = insert_id;
		this.insert_date = insert_date;
		this.update_id = update_id;
		this.update_date = update_date;
	}
	
	
	@Override
	public String toString() {
		return "FreelancerCareerVo [freeln_id=" + freeln_id + ", freeln_nm=" + freeln_nm + ", freeln_phone="
				+ freeln_phone + ", career_num=" + career_num + ", client_nm=" + client_nm + ", client_loca_1="
				+ client_loca_1 + ", client_loca_2=" + client_loca_2 + ", duty=" + duty + ", task=" + task
				+ ", work_str_date=" + work_str_date + ", work_end_date=" + work_end_date + ", contents=" + contents
				+ ", use_tech_1=" + use_tech_1 + ", use_tech_2=" + use_tech_2 + ", work_money=" + work_money
				+ ", insert_id=" + insert_id + ", insert_date=" + insert_date + ", update_id=" + update_id
				+ ", update_date=" + update_date + "]";
	}
	
	
}
