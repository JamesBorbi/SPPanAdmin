package net.sppan.base.controller.admin;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import net.sppan.base.common.JsonResult;
import net.sppan.base.controller.BaseController;

import net.sppan.base.entity.User;
import net.sppan.base.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController extends BaseController {
	@Autowired
	private IUserService userService;
	@Autowired
	HttpServletRequest request;
	@RequestMapping(value = { "/admin/login" }, method = RequestMethod.GET)
	public String login() {

		return "admin/login";
	}
	@RequestMapping(value = { "/admin/login" }, method = RequestMethod.POST)
	public String login(
			@RequestParam("username") String username,
			@RequestParam("oldpassword") String oldpassword,
			@RequestParam("password") String password,
			@RequestParam("submitType") Integer submitType,
			ModelMap model
			) {
		try {
			// 登陆类型:1登陆 2创建 3重置密码
			if(submitType.equals(1)){
				 Subject subject = SecurityUtils.getSubject();
				 UsernamePasswordToken token = new UsernamePasswordToken(username, password);
				subject.login(token);
				//除了admin能登陆后台，其他登陆网站首页
				if(username.equals("admin")){
					return redirect("/admin/index");
				}
				return redirect("/index");
			}
			// 2创建
			if(submitType.equals(2)){
				//创建用户
				this.editUser(username,password,request);
				//创建用户后登陆
				Subject subject = SecurityUtils.getSubject();
				UsernamePasswordToken token = new UsernamePasswordToken(username, password);
				subject.login(token);
				return redirect("/index");
			}
			//3重置密码
			if(submitType.equals(3)){
				updatePassword(username,password,oldpassword,request);

			}
		} catch (Exception e) {
			model.put("message", e.getMessage());
		}
		return "admin/login";
	}
	
	@RequestMapping(value = { "/admin/logout" }, method = RequestMethod.GET)
	public String logout() {
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		return redirect("admin/login");
	}

	/**
	 * 创建用户
	 * @param username
	 * @param password
	 */
	public void editUser(String username, String password,HttpServletRequest request){

		User exitUser = userService.findByUserName(username);
		User user = new User();
		if(exitUser == null){
			user.setUserName(username);
			user.setNickName(username);
			user.setPassword(password);
			user.setSex(1);
			user.setBirthday(DateUtil.parse("1995-04-06 00:00:00","yyyy-MM-dd HH:mm:ss"));
			user.setTelephone("15988889999");
			user.setEmail("1234567@qq.com");
			user.setAddress(getIpAddress(request));
			user.setLocked(0);
			user.setDescription("新建");
		}else {
			user.setId(exitUser.getId());
			user.setUserName(username);
			user.setNickName(username);
			user.setPassword(password);
			user.setAddress(getIpAddress(request));
		}
		userService.saveOrUpdate(user);


	}
	/**
	 * 重置密码
	 * @param username
	 * @param password
	 */
	public void updatePassword(String username, String password,String oldpassword,HttpServletRequest request){

		User exitUser = userService.findByUserName(username);
		if(exitUser == null){
			throw new Error( "You are not logged in" );
		}
		userService.updatePwd((User)exitUser, oldpassword, password, password);

	}

	/**
	 * 获取ip地址
	 * @param request
	 * @return
	 */
	public String getIpAddress(HttpServletRequest request){
		String ipAddress = request.getRemoteAddr();
		// 如果是代理服务器，获取头信息中的IP地址
		String proxyIp = request.getHeader("X-Forwarded-For");
		if (proxyIp != null && !proxyIp.isEmpty()) {
			ipAddress = proxyIp.split(",")[0].trim();
		} else {
			// 如果没有代理服务器，或者代理服务器没有设置X-Forwarded-For头信息
			ipAddress = request.getRemoteAddr();
		}

		return ipAddress;
	}
}
