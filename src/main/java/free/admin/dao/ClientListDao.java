package free.admin.dao;

import java.util.HashMap;
import java.util.List;

import free.admin.vo.ClientListVo;

public interface ClientListDao {

	List<ClientListVo> clientList(HashMap<String, Object> map);

	void clientAdd(ClientListVo vo);

}
