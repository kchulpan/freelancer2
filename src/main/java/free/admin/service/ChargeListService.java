package free.admin.service;

import java.util.HashMap;
import java.util.List;

import free.admin.vo.ChargeListVo;

public interface ChargeListService 
{

	public List<ChargeListVo> chargeList(HashMap<String,Object> map);

	public List<ChargeListVo> chargeDetail(HashMap<String, Object> map);

	public void chargeUpdate(HashMap<String, Object> map);

	public void ChargeNewInsert(HashMap<String, Object> map);

	public void chargeDelete(HashMap<String, Object> map);

}
