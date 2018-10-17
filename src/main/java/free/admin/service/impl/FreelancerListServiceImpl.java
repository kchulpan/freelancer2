package free.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import free.admin.dao.ChargeListDao;
import free.admin.dao.FreelancerListDao;
import free.admin.service.FreelancerListService;
import free.admin.vo.ChargeListVo;
import free.admin.vo.FreelancerCallVo;
import free.admin.vo.FreelancerCareerVo;
import free.admin.vo.FreelancerListVo;

@Service("FreelancerListService")
public class FreelancerListServiceImpl implements FreelancerListService {

	@Autowired
	FreelancerListDao freelancerListDao;
	
	@Override
	public List<FreelancerListVo> freelancerList() {
		List<FreelancerListVo> freelancerList = freelancerListDao.freelancerList();
		return freelancerList;
	}

	@Override
	public FreelancerListVo freelancerView(HashMap<String, Object> map) {
		FreelancerListVo freelancer = freelancerListDao.freelancerView(map);
		return freelancer;
	}
	
	@Override
	public FreelancerListVo freelancerView2(HashMap<String, Object> map) {
		FreelancerListVo freelancer = freelancerListDao.freelancerView2(map);
		return freelancer;
	}

	@Override
	public FreelancerListVo freelancerTechView(HashMap<String, Object> map) {
		FreelancerListVo freelancerTech = freelancerListDao.freelancerTechView(map);
		/*System.out.println(freelancerTech.getMajor_tech());*/
		/*System.out.println(arr_major_tech[0]);*/
		return freelancerTech;
	}

	@Override
	public List<FreelancerCareerVo> freelancerCareerView(HashMap<String, Object> map) {
		List<FreelancerCareerVo> freelancerCareer = freelancerListDao.freelancerCareerView(map);
		/*System.out.println("service::"+freelancerCareer);*/
		return freelancerCareer;
	}

	@Override
	public List<FreelancerCallVo> freelancerCallView(HashMap<String, Object> map) {
		List<FreelancerCallVo> freelancerCall = freelancerListDao.freelancerCallView(map);
		/*System.out.println("service::" + freelancerCall);*/
		return freelancerCall;
	}

	@Override
	public List<FreelancerCallVo> callChargeList() {
		List<FreelancerCallVo> callChargeList = freelancerListDao.callChargeList();
		return callChargeList;
	}

	@Override
	public void freelnDetail04_Call_Insert(HashMap<String, Object> map) {
		freelancerListDao.freelnDetail04_Call_Insert(map);
	}

	

}
