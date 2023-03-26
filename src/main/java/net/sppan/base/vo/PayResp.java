package net.sppan.base.vo;

import java.io.Serializable;

/**
 * ztree树
 */
public class PayResp implements Serializable{

	/**
	 *
	 */
	private static final long serialVersionUID = 6237809780035784312L;

	/**
	 * String url = "hwewe";//支付地址
	 * 		String pid = "11591";//商户id
	 * 		String type = "alipay";//支付类型
	 * 		String outTradeNo = DateUtil.format(DateUtil.date(), DatePattern.PURE_DATETIME_PATTERN) + RandomUtil.randomNumbers(5);//商户单号
	 * 		String notifyUrl = "http://pay.zzyun.com/notify_url.php";//异步通知
	 * 		String returnUrl = "http://pay.zzyun.com/return_url.php";//跳转地址
	 * 		String name = dto.getSupplier();//商品名
	 * 		String money = dto.getPrice();//价格:"1.00"
	 * 		String signType = "MD5";//签名类型
	 * 		String key = "mmalIem77fX3E7357E3eE4XHmnaLxXMZ";//商户密钥
	 */
	private String pid;
	private String type;
	private String outTradeNo;
	private String notifyUrl;
	private String returnUrl;
	private String name;
	private String money;
	private String signType;
	private String key;
	private String sign;

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getOutTradeNo() {
		return outTradeNo;
	}

	public void setOutTradeNo(String outTradeNo) {
		this.outTradeNo = outTradeNo;
	}

	public String getNotifyUrl() {
		return notifyUrl;
	}

	public void setNotifyUrl(String notifyUrl) {
		this.notifyUrl = notifyUrl;
	}

	public String getReturnUrl() {
		return returnUrl;
	}

	public void setReturnUrl(String returnUrl) {
		this.returnUrl = returnUrl;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getSignType() {
		return signType;
	}

	public void setSignType(String signType) {
		this.signType = signType;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}
}
