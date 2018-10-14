package free.admin.service;

import java.util.HashMap;
import java.util.List;

import free.admin.vo.ChargeListVo;
import free.admin.vo.ProjectListVo;

public interface ProjectListService 
{

	public List<ProjectListVo> projectList(HashMap<String,Object> map);

}
