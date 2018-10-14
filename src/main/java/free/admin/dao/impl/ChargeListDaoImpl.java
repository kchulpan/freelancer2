package free.admin.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import free.admin.dao.ChargeListDao;
import free.admin.vo.ChargeListVo;

@Repository
public class ChargeListDaoImpl implements ChargeListDao
{
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ChargeListVo> chargeList(HashMap<String,Object> map) 
	{
		
		sqlSession.selectList("Charge.ChargeList", map);
		List<ChargeListVo>  chargeList = (List<ChargeListVo>)map.get("result");
		return chargeList;
	}

}
