package free.admin.vo;

public class ProjectListVo 
{
	private int rownum;
	private String proj_id;
	private String charge_id;
	private String proj_nm;
	private String proj_str_date;
	private String proj_end_date;
	private String client_id;
	private String need_tech;
	private String field_1;
	private String field_2;
	private String note;
	private String involve_num;
	private String charge_nm;
	private String remark;
	
	
	public ProjectListVo() {}
	
	//constructor
	
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public String getProj_id() {
		return proj_id;
	}
	public void setProj_id(String proj_id) {
		this.proj_id = proj_id;
	}
	public String getCharge_id() {
		return charge_id;
	}
	public void setCharge_id(String charge_id) {
		this.charge_id = charge_id;
	}
	public String getProj_nm() {
		return proj_nm;
	}
	public void setProj_nm(String proj_nm) {
		this.proj_nm = proj_nm;
	}
	public String getProj_str_date() {
		return proj_str_date;
	}
	public void setProj_str_date(String proj_str_date) {
		this.proj_str_date = proj_str_date;
	}
	public String getProj_end_date() {
		return proj_end_date;
	}
	public void setProj_end_date(String proj_end_date) {
		this.proj_end_date = proj_end_date;
	}
	public String getClient_id() {
		return client_id;
	}
	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}
	public String getNeed_tech() {
		return need_tech;
	}
	public void setNeed_tech(String need_tech) {
		this.need_tech = need_tech;
	}
	public String getField_1() {
		return field_1;
	}
	public void setField_1(String field_1) {
		this.field_1 = field_1;
	}
	public String getField_2() {
		return field_2;
	}
	public void setField_2(String field_2) {
		this.field_2 = field_2;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getInvolve_num() {
		return involve_num;
	}
	public void setInvolve_num(String involve_num) {
		this.involve_num = involve_num;
	}
	public String getCharge_nm() {
		return charge_nm;
	}
	public void setCharge_nm(String charge_nm) {
		this.charge_nm = charge_nm;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "ProjectListVo [rownum=" + rownum + ", proj_id=" + proj_id + ", charge_id=" + charge_id + ", proj_nm="
				+ proj_nm + ", proj_str_date=" + proj_str_date + ", proj_end_date=" + proj_end_date + ", client_id="
				+ client_id + ", client_nm="  + ", need_tech=" + need_tech + ", field_1=" + field_1
				+ ", field_2=" + field_2 + ", note=" + note + ", involve_num=" + involve_num + ", charge_nm="
				+ charge_nm + ", remark=" + remark + "]";
	}

	public ProjectListVo(int rownum, String proj_id, String charge_id, String proj_nm, String proj_str_date,
			String proj_end_date, String client_id, String client_nm, String need_tech, String field_1, String field_2,
			String note, String involve_num, String charge_nm, String remark) {
		super();
		this.rownum = rownum;
		this.proj_id = proj_id;
		this.charge_id = charge_id;
		this.proj_nm = proj_nm;
		this.proj_str_date = proj_str_date;
		this.proj_end_date = proj_end_date;
		this.client_id = client_id;
		this.need_tech = need_tech;
		this.field_1 = field_1;
		this.field_2 = field_2;
		this.note = note;
		this.involve_num = involve_num;
		this.charge_nm = charge_nm;
		this.remark = remark;
	}
	
	

	
	
	
}

