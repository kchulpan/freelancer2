package free.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import free.admin.vo.ClientListVo;

public interface ClientListService {
	
	public List<ClientListVo> clientList(HashMap<String, Object> map);

	void clientAdd(HashMap<String, Object> map);
	
	void clientUpdate(HashMap<String, Object> map);
	
	void clientDelete(HashMap<String, Object> map);
	
	/*void clientDelete(String client_id);*/
}
