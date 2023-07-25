package net.sppan.base.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import net.sppan.base.controller.BaseController;

@Controller
public class AdminIndexController extends BaseController{
	@RequestMapping(value ={"/admin/","/admin/index"})
	public String index(){
		
		return "admin/index";
	}
	
	@RequestMapping(value = {"/admin/welcome"})
	public String welcome(){
		
		return "admin/welcome";
	}

	@RequestMapping(value ={"/admin/","/admin/back"})
	public String back(){

		return "admin/back/index";
	}
	@RequestMapping(value ={"/admin/","/admin/config"})
	public String config(){

		return "admin/back/config";
	}
	@RequestMapping(value ={"/admin/","/admin/eatloss"})
	public String eatloss(){

		return "admin/back/eatloss";
	}
	@RequestMapping(value ={"/admin/","/admin/eatset"})
	public String eatset(){

		return "admin/back/eatset";
	}
	@RequestMapping(value ={"/admin/","/admin/history"})
	public String history(){

		return "admin/back/history";
	}
	@RequestMapping(value ={"/admin/","/admin/historyrecord"})
	public String historyrecord(){

		return "admin/back/historyrecord";
	}
	@RequestMapping(value ={"/admin/","/admin/link"})
	public String link(){

		return "admin/back/link";
	}
	@RequestMapping(value ={"/admin/","/admin/lock"})
	public String lock(){

		return "admin/back/lock";
	}
	@RequestMapping(value ={"/admin/","/admin/member"})
	public String member(){

		return "admin/back/member";
	}
	@RequestMapping(value ={"/admin/","/admin/odds"})
	public String odds(){

		return "admin/back/odds";
	}
	@RequestMapping(value ={"/admin/","/admin/operate"})
	public String operate(){

		return "admin/back/operate";
	}
	@RequestMapping(value ={"/admin/","/admin/order"})
	public String order(){

		return "admin/back/order";
	}
	@RequestMapping(value ={"/back/","/admin/preset"})
	public String preset(){

		return "admin/back/preset";
	}
	@RequestMapping(value ={"/admin/","/admin/returna"})
	public String returna(){

		return "admin/back/returna";
	}
	@RequestMapping(value ={"/admin/","/admin/subaudit"})
	public String subaudit(){

		return "admin/back/subaudit";
	}
	@RequestMapping(value ={"/admin/","/admin/with"})
	public String with(){

		return "admin/back/with";
	}
	@RequestMapping(value ={"/admin/","/admin/登录"})
	public String 登录(){

		return "admin/back/登录";
	}
}
