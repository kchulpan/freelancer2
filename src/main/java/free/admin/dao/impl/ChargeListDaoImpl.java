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
	//담당자 리스트 조회
	@Override
	public List<ChargeListVo> chargeList(HashMap<String,Object> map) 
	{
		
		sqlSession.selectList("Charge.ChargeList", map);
		List<ChargeListVo>  chargeList = (List<ChargeListVo>)map.get("result");
		return chargeList;
	}
	//담당자 상세조회
	@Override
	public List<ChargeListVo> chargeDetail(HashMap<String, Object> map) 
	{
		sqlSession.selectOne("Charge.ChargeDetail", map);
		List<ChargeListVo>  chargeDetail = (List<ChargeListVo>)map.get("result");
		return chargeDetail;
	}
	
	//담당자 데이터 수정
	@Override
	public void chargeUpdate(HashMap<String, Object> map) {
		sqlSession.update("Charge.ChargeUpdate", map);
	}
	
	//새 담당자 입력
	@Override
	public void ChargeNewInsert(HashMap<String, Object> map) 
	{
		sqlSession.insert("Charge.ChargeInsert", map);
	}
	
	// 담당자 삭제
	@Override
	public void chargeDelete(HashMap<String, Object> map) 
	{
		sqlSession.delete("Charge.ChargeDelete", map);
	}

}
