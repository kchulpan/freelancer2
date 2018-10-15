package free.admin.service;

import java.util.HashMap;
import java.util.List;

import free.admin.vo.ClientListVo;

public interface ClientListService {
	
	public List<ClientListVo> clientList(HashMap<String, Object> map);

	public void clientAdd(ClientListVo vo);
	
}
