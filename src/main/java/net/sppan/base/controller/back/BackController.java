package net.sppan.base.controller.back;

import net.sppan.base.controller.BaseController;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BackController extends BaseController{
	@RequestMapping(value ={"/back"})
	public String config(){

		return "/back/config.html";
	}

	@RequestMapping(value = { "/back/logout" }, method = RequestMethod.GET)
	public String logout() {
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		return redirect("/admin/login");
	}
}
