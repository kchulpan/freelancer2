package free.admin.dao.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import free.admin.dao.ClientListDao;
import free.admin.vo.ClientListVo;

@Repository
public class ClientListDaoImpl implements ClientListDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ClientListVo> clientList(HashMap<String, Object> map) {
		
		sqlSession.selectList("Client.ClientList", map);
		List<ClientListVo> clientList = (List<ClientListVo>) map.get("result");
		
		return clientList;
	}
	

	@Override
	public void clientAdd(HashMap<String, Object> map) {
		sqlSession.insert("Client.ClientInsert", map);
		
	}

}
