package net.sppan.base.vo;

import java.io.Serializable;

/**
 * ztree树
 */
public class PayDto implements Serializable{

	/**
	 *
	 */
	private static final long serialVersionUID = 6237809780035784312L;

	private String price;

	private String supplier;


	public PayDto() {
	}

	public PayDto(String price, String supplier) {
		this.price = price;
		this.supplier = supplier;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
}
