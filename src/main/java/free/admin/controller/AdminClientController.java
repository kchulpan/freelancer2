package free.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.print.attribute.HashPrintJobAttributeSet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import free.admin.service.ClientListService;
import free.admin.vo.ClientListVo;

@Controller
public class AdminClientController {
	
	@Autowired
	ClientListService clientListService;
	
	@RequestMapping("/Client")
	public ModelAndView clientList(@RequestParam HashMap<String, Object> map) {
		
		ModelAndView mv = new ModelAndView();
		List<ClientListVo> clientList = clientListService.clientList(map);
		
		mv.addObject("clientList", clientList);
		mv.setViewName("ADMIN/04_CLIENT/client");
		return mv;
	}
	
	
	@RequestMapping("/ClientInsert")
	public ModelAndView clientInsert(@RequestParam HashMap<String, Object> map) {
		
		clientListService.clientAdd(map);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Client");
		
		return mv;
		
	}
	
	@RequestMapping("/ClientUpdate")
	public String clientUpdate(@RequestParam HashMap<String, Object> map) {
		System.out.println("업데이트" + map);
		clientListService.clientUpdate(map);
		return "redirect:/Client";
		
		
	}
	
	@RequestMapping("/ClientDelete")
	public String clientDelete(@RequestParam HashMap<String, Object> map) {
		System.out.println("삭제"+map);
		clientListService.clientDelete(map);
		
		return "redirect:/Client";
		
		
		
	}

	
	
}
