package free.admin.service;

import java.util.HashMap;
import java.util.List;

import free.admin.vo.FreelancerCallVo;
import free.admin.vo.FreelancerCareerVo;
import free.admin.vo.FreelancerListVo;

public interface FreelancerListService {

	List<FreelancerListVo> freelancerList();

	FreelancerListVo freelancerView(HashMap<String, Object> map);
	
	FreelancerListVo freelancerView2(HashMap<String, Object> map);

	FreelancerListVo freelancerTechView(HashMap<String, Object> map);

	List<FreelancerCareerVo> freelancerCareerView(HashMap<String, Object> map);

	List<FreelancerCallVo> freelancerCallView(HashMap<String, Object> map);

	List<FreelancerCallVo> callChargeList();

	void freelnDetail04_Call_Insert(HashMap<String, Object> map);

}
