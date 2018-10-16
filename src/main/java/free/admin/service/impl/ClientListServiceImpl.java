package free.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import free.admin.dao.ClientListDao;
import free.admin.service.ClientListService;
import free.admin.vo.ClientListVo;

@Service
public class ClientListServiceImpl implements ClientListService {

	@Autowired
	ClientListDao clientListDao;
	
	@Override
	public List<ClientListVo> clientList(HashMap<String, Object> map) {
		
		List<ClientListVo> clientList = clientListDao.clientList(map);
		
		return clientList;
	}

	@Override
	public void clientAdd(ClientListVo vo) {
		clientListDao.clientAdd(vo);		
	}
	
}
