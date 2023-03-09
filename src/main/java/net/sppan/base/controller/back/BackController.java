package net.sppan.base.controller.back;

import net.sppan.base.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BackController extends BaseController{
	@RequestMapping(value ={"/back"})
	public String config(){
		
		return "/back/config.html";
	}
	
//	@RequestMapping(value = {"/admin/welcome"})
//	public String welcome(){
//
//		return "admin/welcome";
//	}
}
