package free.admin.dao;

import java.util.HashMap;
import java.util.List;

import free.admin.vo.ChargeListVo;

public interface ChargeListDao 
{

	public List<ChargeListVo> chargeList(HashMap<String,Object> map);

	public List<ChargeListVo> chargeDetail(HashMap<String, Object> map);

}
