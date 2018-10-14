package free.admin.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import free.admin.service.ChargeListService;
import free.admin.vo.ChargeListVo;

@Controller
public class AdminChargeController {
	
	/*include*/
	
	@Autowired
	ChargeListService chargeListService;
	
	/* 담당자 조회 */
	@RequestMapping("/Charge")
	public ModelAndView chargeList(@RequestParam HashMap<String,Object> map) 
	{
		ModelAndView mav = new ModelAndView();
		List<ChargeListVo> chargeList = chargeListService.chargeList(map);
		
		mav.addObject("chargeList", chargeList);
		mav.setViewName("ADMIN/03_CHARGE/charge");
		return mav;
	}
	/*담당자 상세 페이지*/
	@RequestMapping("/Charge_p1")
	public String chargeDetail()
	{
		return "ADMIN/03_CHARGE/charge_p1";
	}
}
