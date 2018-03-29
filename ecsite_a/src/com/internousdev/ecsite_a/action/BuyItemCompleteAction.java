package com.internousdev.ecsite_a.action;


import java.sql.SQLException;

import com.internousdev.ecsite_a.dao.BuyItemCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;


public class BuyItemCompleteAction extends ActionSupport{
	private String id;
	private String itemName;
	private String totalPrice;
	private String count;
	private String user_master_id;
	private String pay;

	public String execute() throws SQLException{

		String[] item_transaction_id = id.split(", ",0);
		String[] item_name = itemName.split(", ",0);
		String[] total_price = totalPrice.split(", ",0);
		String[] total_count = count.split(", ",0);

		item_transaction_id.put()
		String ret = ERROR;
		BuyItemCompleteDAO dao = new BuyItemCompleteDAO();
		int count = dao.buyItemInfo(item_transaction_id,item_name,total_price,total_count,user_master_id,pay);
		if(count > 0){
			ret = SUCCESS;
		}
		return ret;
	}


	public String getid() {
		return id;
	}


	public void setItem_transaction_id(String id) {
		this.id = id;
	}


	public String getItem_name() {
		return item_name;
	}


	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}


	public String getUser_master_id() {
		return user_master_id;
	}


	public void setUser_master_id(String user_master_id) {
		this.user_master_id = user_master_id;
	}


	public String getTotal_price() {
		return total_price;
	}


	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}


	public String getTotal_count() {
		return total_count;
	}


	public void setTotal_count(String total_count) {
		this.total_count = total_count;
	}


	public String getPay() {
		return pay;
	}


	public void setPay(String pay) {
		this.pay = pay;
	}


}
