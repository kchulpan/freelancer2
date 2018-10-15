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
	

	@Override
	public List<ProjectListVo> projectList(HashMap<String, Object> map) {
		
		sqlSession.selectList("Project.ProjectList", map);
		List<ProjectListVo>  projectList = (List<ProjectListVo>)map.get("result");
		return projectList;
	}






}
