package free.admin.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import free.admin.service.ChargeListService;
import free.admin.service.ProjectListService;
import free.admin.vo.ProjectListVo;

@Controller
public class AdminController {
	
	/*include*/
	@Autowired
	ProjectListService projectListService;
	
	@RequestMapping("/Freelancer")
	public String Freelancer()
	{
		
		return "CLIENT/client";
	}
	
	
	@RequestMapping("/Commoncode")
	public String commoncode() {
		
		return "ADMIN/00_COMMON/commoncode";
	}
	
	@RequestMapping("/Freeln")
	public String freeln() {
		return "ADMIN/01_FLEENL/freeln";
	}
	
	@RequestMapping("/Project")
	public ModelAndView projectList(@RequestParam HashMap<String,Object> map) 
	{
		ModelAndView mav = new ModelAndView();
		List<ProjectListVo> projectList = projectListService.projectList(map);
		
		mav.addObject("projectList", projectList);
		mav.setViewName("ADMIN/02_PROJECT/project");
		return mav;
	}
	
/*	페이지 새로 뺏음 -> AdminChargeController.java
    @RequestMapping("/Charge")
	public String charge() {
		return "ADMIN/03_CHARGE/charge";
	}*/
	
	@RequestMapping("/Client")
	public String client() {
		return "ADMIN/04_CLIENT/client";
	}
	
}
