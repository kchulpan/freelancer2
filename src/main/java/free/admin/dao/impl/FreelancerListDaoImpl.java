package free.admin.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import free.admin.dao.FreelancerListDao;
import free.admin.vo.ChargeListVo;
import free.admin.vo.FreelancerCallVo;
import free.admin.vo.FreelancerCareerVo;
import free.admin.vo.FreelancerListVo;

@Repository("FreelancerListDao")
public class FreelancerListDaoImpl implements FreelancerListDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<FreelancerListVo> freelancerList() {
		HashMap<String,Object> map = new HashMap<>();
		sqlSession.selectList("Freelancer.FreelancerList",map);   		  //map에 select한 결과를 담아줌
		List<FreelancerListVo> freelancerList = (List<FreelancerListVo>) map.get("result");	 //mapper의 result
		return freelancerList;
	}

	@Override
	public FreelancerListVo freelancerView(HashMap<String, Object> map) {
		sqlSession.selectOne("Freelancer.FreelancerView",map);
		FreelancerListVo freelancer = ((List<FreelancerListVo>) map.get("result")).get(0);

		return freelancer;
	}
	
	@Override
	public FreelancerListVo freelancerView2(HashMap<String, Object> map) {
		/*System.out.println("dao View2 redirect"+map);*/
		sqlSession.selectList("Freelancer.FreelancerView2",map);
		FreelancerListVo freelancer = ((List<FreelancerListVo>) map.get("result")).get(0);

		return freelancer;
	}

	@Override
	public FreelancerListVo freelancerTechView(HashMap<String, Object> map) {
		sqlSession.selectOne("Freelancer.FreelancerTechView",map);
		FreelancerListVo freelancerTech = ((List<FreelancerListVo>) map.get("result")).get(0);
		return freelancerTech;
	}

	@Override
	public List<FreelancerCareerVo> freelancerCareerView(HashMap<String, Object> map) {
		sqlSession.selectList("Freelancer.FreelancerCareerView",map);
		List<FreelancerCareerVo> freelancerCareer = ((List<FreelancerCareerVo>) map.get("result"));
		/*System.out.println("dao::"+freelancerCareer);*/
		return freelancerCareer;
	}

	@Override
	public List<FreelancerCallVo> freelancerCallView(HashMap<String, Object> map) {
		sqlSession.selectList("Freelancer.FreelancerCallView",map);
		List<FreelancerCallVo> freelancerCall = ((List<FreelancerCallVo>) map.get("result"));
		/*System.out.println("dao::" + freelancerCall);*/
		return freelancerCall;
	}

	@Override
	public List<FreelancerCallVo> callChargeList() {
		HashMap<String,Object> map = new HashMap<>();
		sqlSession.selectList("Freelancer.FreelancerCallChargeList",map);
		List<FreelancerCallVo> callChargeList = (List<FreelancerCallVo>) map.get("result");
		return callChargeList;
	}

	@Override
	public void freelnDetail04_Call_Insert(HashMap<String, Object> map) {
		sqlSession.insert("Freelancer.FreelancerCallInsert",map);
	}

	

}
