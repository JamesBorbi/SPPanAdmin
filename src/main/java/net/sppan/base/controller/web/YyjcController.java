package net.sppan.base.controller.web;

import cn.hutool.core.date.DatePattern;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.RandomUtil;
import net.sppan.base.controller.BaseController;
import net.sppan.base.entity.User;
import net.sppan.base.service.IUserService;
import net.sppan.base.vo.PayDto;
import net.sppan.base.vo.PayResp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
public class YyjcController extends BaseController{
	
	@Autowired
	private IUserService userService;
	
	private Logger logger = LoggerFactory.getLogger(getClass());

	@RequestMapping(value={"/myOrder"})
	public String myOrder(){
		//记得安全校验
		List<User> users = userService.findAll();
		return "/yyjc/myorder";
	}


	public PayResp getSign(PayDto dto){
		String url = "https://pay.zzyun.com/submit.php";//支付地址
		String pid = "11591";//商户id
		String type = "alipay";//支付类型
		String outTradeNo = DateUtil.format(DateUtil.date(), DatePattern.PURE_DATETIME_PATTERN) + RandomUtil.randomNumbers(5);//商户单号
		String notifyUrl = "http://pay.zzyun.com/notify_url.php";//异步通知
		String returnUrl = "http://pay.zzyun.com/return_url.php";//跳转地址
		String name = dto.getSupplier();//商品名
		String money = dto.getPrice();//价格:"1.00"
		String signType = "MD5";//签名类型
		String key = "mmalIem77fX3E7357E3eE4XHmnaLxXMZ";//商户密钥



		//参数存入 map
		Map<String,String> sign = new HashMap<>();
		sign.put("pid",pid);
		sign.put("type",type);
		sign.put("out_trade_no",outTradeNo);
		sign.put("notify_url",notifyUrl);
		sign.put("return_url",returnUrl);
		sign.put("name",name);
		sign.put("money",money);

		//根据key升序排序
		sign = sortByKey(sign);

		String signStr = "";

		//遍历map 转成字符串
		for(Map.Entry<String,String> m :sign.entrySet()){
			signStr += m.getKey() + "=" +m.getValue()+"&";
		}

		//去掉最后一个 &
		signStr = signStr.substring(0,signStr.length()-1);

		//最后拼接上KEY
		signStr += key;

		//转为MD5
		signStr = DigestUtils.md5DigestAsHex(signStr.getBytes());

		sign.put("sign_type",signType);
		sign.put("sign",signStr);


		PayResp resp = new PayResp();
		resp.setOutTradeNo(outTradeNo);
		resp.setMoney(dto.getPrice());
		resp.setName(name);
		resp.setSign(signStr);

		return resp;
	}


	public void getPayPage(String price,String supplier){
		String url = "https://pay.zzyun.com/submit.php";//支付地址
		String pid = "11591";//商户id
		String type = "alipay";//支付类型
		String outTradeNo = DateUtil.format(DateUtil.date(), DatePattern.PURE_DATETIME_PATTERN) + RandomUtil.randomNumbers(5);//商户单号
		String notifyUrl = "http://pay.zzyun.com/notify_url.php";//异步通知
		String returnUrl = "http://pay.zzyun.com/return_url.php";//跳转地址
		String name = supplier;//商品名
		String money = price;//价格:"1.00"
		String signType = "MD5";//签名类型
		String key = "mmalIem77fX3E7357E3eE4XHmnaLxXMZ";//商户密钥

		//参数存入 map
		Map<String,String> sign = new HashMap<>();
		sign.put("pid",pid);
		sign.put("type",type);
		sign.put("out_trade_no",outTradeNo);
		sign.put("notify_url",notifyUrl);
		sign.put("return_url",returnUrl);
		sign.put("name",name);
		sign.put("money",money);

		//根据key升序排序
		sign = sortByKey(sign);

		String signStr = "";

		//遍历map 转成字符串
		for(Map.Entry<String,String> m :sign.entrySet()){
			signStr += m.getKey() + "=" +m.getValue()+"&";
		}

		//去掉最后一个 &
		signStr = signStr.substring(0,signStr.length()-1);

		//最后拼接上KEY
		signStr += key;

		//转为MD5
		signStr = DigestUtils.md5DigestAsHex(signStr.getBytes());

		sign.put("sign_type",signType);
		sign.put("sign",signStr);
		System.out.println("<form id='paying' action='"+url+"/submit.php' method='post'>");
		for(Map.Entry<String,String> m :sign.entrySet()){
			System.out.println("<input type='hidden' name='"+m.getKey()+"' value='"+m.getValue()+"'/>");
		}
		System.out.println("<input type='submit' value='正在跳转'>");
		System.out.println("</form>");
		System.out.println("<script>document.forms['paying'].submit();</script>");
	}



	public static <K extends Comparable<? super K>, V > Map<K, V> sortByKey(Map<K, V> map) {
		Map<K, V> result = new LinkedHashMap<>();

		map.entrySet().stream().sorted(Map.Entry.<K, V>comparingByKey()).forEachOrdered(e -> result.put(e.getKey(), e.getValue()));
		return result;
	}

}
