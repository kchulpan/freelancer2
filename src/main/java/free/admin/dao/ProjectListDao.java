package free.admin.dao;

import java.util.HashMap;
import java.util.List;

import free.admin.vo.ProjectListVo;

public interface ProjectListDao 
{


	public List<ProjectListVo> projectList(HashMap<String, Object> map);

	public List<ProjectListVo> projectDetail(HashMap<String, Object> map);

	public void projectUpdate(HashMap<String, Object> map);

	public void ProjectNewInsert(HashMap<String, Object> map);




	



}
