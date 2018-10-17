package free.admin.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import free.admin.dao.ProjectListDao;
import free.admin.vo.ProjectListVo;

@Repository
public class ProjectListDaoImpl implements ProjectListDao
{
	@Autowired
	SqlSession sqlSession;
	
	// 프로젝트 리스트 조회
	@Override
	public List<ProjectListVo> projectList(HashMap<String, Object> map) {
		
		sqlSession.selectList("Project.ProjectList", map);
		List<ProjectListVo>  projectList = (List<ProjectListVo>)map.get("result");
		return projectList;
	}

	// 프로젝트 리스트 상세 조회
	@Override
	public List<ProjectListVo> projectDetail(HashMap<String, Object> map) {
		sqlSession.selectList("Project.ProjectDetail", map);
		List<ProjectListVo>  projectDetail = (List<ProjectListVo>)map.get("result");
		System.out.println("daoimpl넘어온값"+projectDetail );
		return projectDetail;
	}

	// 프로젝트 데이터 수정
	@Override
	public void projectUpdate(HashMap<String, Object> map) {
		sqlSession.update("Project.ProjectUpdate", map);
		
	}
	// 새 프로젝트 입력
	@Override
	public void ProjectNewInsert(HashMap<String, Object> map) {
		sqlSession.insert("Project.ProjectInsert", map);
		
	}






}
