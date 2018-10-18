package free.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController
{
	@RequestMapping("/")
	public String logIn()
	{
		return "./LOGIN/login";
	}
	
	@RequestMapping("/SubPage")
	public String subPage() {
		return "ADMIN/00_COMMON/sub_page";
	}
	
	@RequestMapping("/Register")
	public String register() {
		return "./LOGIN/register";
	}
	
	@RequestMapping("/Forgot-password")
	public String forgotpassword() {
		return "./LOGIN/forgot-password";
	}
	
	
}