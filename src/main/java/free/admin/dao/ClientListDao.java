package free.admin.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import free.admin.vo.ClientListVo;

public interface ClientListDao {

	List<ClientListVo> clientList(HashMap<String, Object> map);

	public void clientAdd(HashMap<String, Object> map);

	public void clientUpdate(HashMap<String, Object> map);

	public void clientDelete(HashMap<String, Object> map);

}
