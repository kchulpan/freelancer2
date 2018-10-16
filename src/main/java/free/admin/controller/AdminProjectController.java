package free.admin.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import free.admin.service.ProjectListService;
import free.admin.vo.ProjectListVo;

@Controller
public class AdminProjectController {
	
	/*include*/
	
	@Autowired
	ProjectListService projectListService;
	
	/* 프로젝트조회 */
	@RequestMapping("/Project")
	public ModelAndView projectList(@RequestParam HashMap<String,Object> map) 
	{
		ModelAndView mav = new ModelAndView();
		List<ProjectListVo> projectList = projectListService.projectList(map);
		
		System.out.println("리스트" + projectList);
		mav.addObject("projectList", projectList);
		mav.setViewName("ADMIN/02_PROJECT/project");
		return mav;
	}
	/* 프로젝트 상세 페이지 */
	@RequestMapping("/Project_p1")
	public ModelAndView projectDetail(@RequestParam HashMap<String,Object> map)
	{
		ModelAndView mav = new ModelAndView();
		List<ProjectListVo> projectDetail = projectListService.projectDetail(map);
		mav.addObject("projectDetail",projectDetail);
		mav.setViewName("ADMIN/02_PROJECT/project_p1");
		System.out.println("넘어온값"+projectDetail);
		return mav;
	
	}
	/*프로젝트 상세 수정후 리스트로 redirect*/
	@RequestMapping("/ProjectUpdate")
	public String ProjectUpdate(@RequestParam HashMap<String,Object> map)
	{
		projectListService.projectUpdate(map);
		return "redirect:/Project";
	}
	/*새 프로젝트 등록 페이지로 이동*/
	@RequestMapping("/ProjectNewReg")
	public String ProjectNewReg()
	{
		return "ADMIN/02_Project/project_p2";
	}
	/*새 프로젝트 등록*/
	@RequestMapping("/ProjectNewInsert")
	public String ProjectNewInsert()
	{
		return null;
	}
}
