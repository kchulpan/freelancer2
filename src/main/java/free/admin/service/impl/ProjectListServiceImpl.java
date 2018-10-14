package free.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import free.admin.dao.ChargeListDao;
import free.admin.dao.ProjectListDao;
import free.admin.service.ChargeListService;
import free.admin.service.ProjectListService;
import free.admin.vo.ChargeListVo;
import free.admin.vo.ProjectListVo;

@Service
public class ProjectListServiceImpl implements ProjectListService
{
	@Autowired
	ProjectListDao projectListDao;
	
	@Override
	public List<ProjectListVo> projectList(HashMap<String,Object> map) 
	{
		List<ProjectListVo> projectList = projectListDao.projectList(map);
		return projectList;
	}

}
