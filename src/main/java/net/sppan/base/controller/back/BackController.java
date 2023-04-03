package net.sppan.base.controller.back;

import net.sppan.base.controller.BaseController;
import net.sppan.base.entity.User;
import net.sppan.base.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BackController extends BaseController{
	@Autowired
	private IUserService userService;
	@RequestMapping(value = { "/back/logout" }, method = RequestMethod.GET)
	public String logout() {
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		return redirect("/admin/login");
	}
	@RequestMapping(value ={"/back/","/back/index"})
	public String index(ModelMap map){
//		User user = userService.find(id);
		map.put("user", "2342342");
		return "back/index";
	}
	@RequestMapping(value ={"/back/","/back/config"})
	public String config(){

		return "back/config";
	}
	@RequestMapping(value ={"/back/","/back/eatloss"})
	public String eatloss(){

		return "back/eatloss";
	}
	@RequestMapping(value ={"/back/","/back/eatset"})
	public String eatset(){

		return "back/eatset";
	}
	@RequestMapping(value ={"/back/","/back/history"})
	public String history(){

		return "back/history";
	}
	@RequestMapping(value ={"/back/","/back/historyrecord"})
	public String historyrecord(){

		return "back/historyrecord";
	}
	@RequestMapping(value ={"/back/","/back/link"})
	public String link(){

		return "back/link";
	}
	@RequestMapping(value ={"/back/","/back/lock"})
	public String lock(){

		return "back/lock";
	}
	@RequestMapping(value ={"/back/","/back/member"})
	public String member(){

		return "back/member";
	}
	@RequestMapping(value ={"/back/","/back/odds"})
	public String odds(){

		return "back/odds";
	}
	@RequestMapping(value ={"/back/","/back/operate"})
	public String operate(){

		return "back/operate";
	}
	@RequestMapping(value ={"/back/","/back/order"})
	public String order(){

		return "back/order";
	}
	@RequestMapping(value ={"/back/","/back/preset"})
	public String preset(){

		return "back/preset";
	}
	@RequestMapping(value ={"/back/","/back/returna"})
	public String returna(){

		return "back/returna";
	}
	@RequestMapping(value ={"/back/","/back/subaudit"})
	public String subaudit(){

		return "back/subaudit";
	}
	@RequestMapping(value ={"/back/","/back/with"})
	public String with(){

		return "back/with";
	}
	@RequestMapping(value ={"/back/","/back/登录"})
	public String 登录(){

		return "back/登录";
	}
}
