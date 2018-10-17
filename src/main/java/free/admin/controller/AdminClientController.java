package free.admin.controller;

import java.util.HashMap;
import java.util.List;

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
	
	
}
