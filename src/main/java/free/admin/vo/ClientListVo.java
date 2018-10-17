package free.admin.vo;

public class ClientListVo {
	private int rownum;
	private String client_id;
	private String client_nm;
	private String client_addr_1;
	private String client_addr_2;
	private String client_file;
	private String client_file_nm;
	private String update_id;
	private String update_date;
	
	
	



	public ClientListVo() {}
	
	
	
	public ClientListVo(int rownum, String client_id, String client_nm, String client_addr_1, String client_addr_2,
			String client_file, String client_file_nm, String update_id, String update_date) {
		this.rownum = rownum;
		this.client_id = client_id;
		this.client_nm = client_nm;
		this.client_addr_1 = client_addr_1;
		this.client_addr_2 = client_addr_2;
		this.client_file = client_file;
		this.client_file_nm = client_file_nm;
		this.update_id = update_id;
		this.update_date = update_date;
	}
	
	
	
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public String getClient_id() {
		return client_id;
	}
	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}
	public String getClient_nm() {
		return client_nm;
	}
	public void setClient_nm(String client_nm) {
		this.client_nm = client_nm;
	}
	public String getClient_addr_1() {
		return client_addr_1;
	}
	public void setClient_addr_1(String client_addr_1) {
		this.client_addr_1 = client_addr_1;
	}
	public String getClient_addr_2() {
		return client_addr_2;
	}
	public void setClient_addr_2(String client_addr_2) {
		this.client_addr_2 = client_addr_2;
	}
	public String getClient_file() {
		return client_file;
	}
	public void setClient_file(String client_file) {
		this.client_file = client_file;
	}
	public String getClient_file_nm() {
		return client_file_nm;
	}
	public void setClient_file_nm(String client_file_nm) {
		this.client_file_nm = client_file_nm;
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



	@Override
	public String toString() {
		return "ClientListVo [rownum=" + rownum + ", client_id=" + client_id + ", client_nm=" + client_nm
				+ ", client_addr_1=" + client_addr_1 + ", client_addr_2=" + client_addr_2 + ", client_file="
				+ client_file + ", client_file_nm=" + client_file_nm + ", update_id=" + update_id + ", update_date="
				+ update_date + ", getRownum()=" + getRownum() + ", getClient_id()=" + getClient_id()
				+ ", getClient_nm()=" + getClient_nm() + ", getClient_addr_1()=" + getClient_addr_1()
				+ ", getClient_addr_2()=" + getClient_addr_2() + ", getClient_file()=" + getClient_file()
				+ ", getClient_file_nm()=" + getClient_file_nm() + ", getUpdate_id()=" + getUpdate_id()
				+ ", getUpdate_date()=" + getUpdate_date() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
	
	
}
