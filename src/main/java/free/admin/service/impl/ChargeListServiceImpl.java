package free.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import free.admin.dao.ChargeListDao;
import free.admin.service.ChargeListService;
import free.admin.vo.ChargeListVo;

@Service
public class ChargeListServiceImpl implements ChargeListService
{
	@Autowired
	ChargeListDao chargeListdDao;

	@Override
	public List<ChargeListVo> chargeList(HashMap<String,Object> map) 
	{
		List<ChargeListVo> chargeList = chargeListdDao.chargeList(map);
		return chargeList;
	}

}
