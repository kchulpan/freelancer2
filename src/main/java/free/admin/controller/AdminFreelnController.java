package free.admin.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import free.admin.service.ChargeListService;
import free.admin.service.FreelancerListService;
import free.admin.vo.FreelancerCallVo;
import free.admin.vo.FreelancerCareerVo;
import free.admin.vo.FreelancerListVo;
import free.admin.vo.ProjectListVo;

@Controller
public class AdminFreelnController {
	
	@Autowired
	FreelancerListService freelancerListService;
	
	@RequestMapping("/Freeln")
	public ModelAndView freeln() {
		ModelAndView mv = new ModelAndView();
		List<FreelancerListVo> freelancerList = freelancerListService.freelancerList();	
		
		mv.addObject("freelancerList", freelancerList);
		mv.setViewName("ADMIN/01_FLEENL/freeln");
		return mv;
	}
	
	@RequestMapping("/FreelnDetail01")
	public ModelAndView freelnDetail01(@RequestParam HashMap<String,Object> map) {
		ModelAndView mv = new ModelAndView();
		FreelancerListVo freelancer = freelancerListService.freelancerView(map);	
		
		mv.addObject("freelancer", freelancer);
		mv.setViewName("ADMIN/01_FLEENL/freeln_detail_01");
		return mv;
	}
	
	@RequestMapping("/FreelnDetail02")
	public ModelAndView freelnDetail02(@RequestParam HashMap<String,Object> map) {
		ModelAndView mv = new ModelAndView();
		FreelancerListVo freelancerTech = freelancerListService.freelancerTechView(map);	
		String [] arr_major_tech = freelancerTech.getMajor_tech().split(",");
		
		mv.addObject("arr_major_tech",arr_major_tech);
		mv.addObject("freelancerTech", freelancerTech);
		mv.setViewName("ADMIN/01_FLEENL/freeln_detail_02");
		return mv;
	}
	
	@RequestMapping("/FreelnDetail03")
	public ModelAndView freelnDetail03(@RequestParam HashMap<String,Object> map) {
		ModelAndView mv = new ModelAndView();
		
		List<FreelancerCareerVo> freelancerCareer = freelancerListService.freelancerCareerView(map);
		FreelancerListVo freelancer = freelancerListService.freelancerView2(map);
		
		mv.addObject("freelancer", freelancer);
		mv.addObject("freelancerCareer", freelancerCareer);
		
		mv.setViewName("ADMIN/01_FLEENL/freeln_detail_03");
		return mv;
	}
	
	@RequestMapping("/FreelnDetail04")
	public ModelAndView freelnDetail04(@RequestParam HashMap<String,Object> map) {
		ModelAndView mv = new ModelAndView();
		
		FreelancerListVo freelancer = freelancerListService.freelancerView2(map);
		List<FreelancerCallVo> freelancerCall = freelancerListService.freelancerCallView(map);
		List<FreelancerCallVo> callChargeList = freelancerListService.callChargeList();
		
		
		mv.addObject("callChargeList", callChargeList);
		mv.addObject("freelancerCall", freelancerCall);
		mv.addObject("freelancer", freelancer);
		mv.setViewName("ADMIN/01_FLEENL/freeln_detail_04");
		return mv;
	}
	
	@RequestMapping("/FreelnDetail04_Call_Insert")
	public String freelnDetail04_Call_Insert(@RequestParam HashMap<String,Object> map) {
		System.out.println("controller Insert" + map);
		freelancerListService.freelnDetail04_Call_Insert(map);
		
		return "redirect:/FreelnDetail04?freeln_id="+map.get("freeln_id");
	}
}
