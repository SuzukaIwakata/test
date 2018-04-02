package com.internousdev.ecsite_a.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite_a.dto.BuyItemCompleteDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private String id;
	private String itemName;
	private String totalPrice;
	private String count;
	private String pay;
	private ArrayList<BuyItemCompleteDTO> buyItemCompleteDTOList = new ArrayList<>();

	public String execute()throws SQLException{

		System.out.println(id);
		System.out.println(itemName);
		System.out.println(totalPrice);
		System.out.println(count);
		System.out.println(pay);

		String[] idList = id.split(", ",0);
		String[] itemNameList = itemName.split(", ",0);
		String[] countList = count.split(", ",0);

		for(int i=0;i < idList.length;i++){
			BuyItemCompleteDTO dto = new BuyItemCompleteDTO();
			dto.setId(idList[i].toString());
			dto.setItemName(itemNameList[i].toString());
			dto.setTotalPrice(totalPrice.toString());
			dto.setCount(countList[i].toString());
			dto.setPay(pay.toString());
			buyItemCompleteDTOList.add(dto);
 		}


		String result=SUCCESS;
		return result;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getItemName() {
		return itemName;
	}



	public void setItemName(String itemName) {
		this.itemName = itemName;
	}



	public String getTotalPrice() {
		return totalPrice;
	}



	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}



	public String getCount() {
		return count;
	}



	public void setCount(String count) {
		this.count = count;
	}



	public String getPay() {
		return pay;
	}



	public void setPay(String pay) {
		this.pay = pay;
	}



	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}

	public ArrayList<BuyItemCompleteDTO> setBuyItemCompleteDTOList(){
		return this.buyItemCompleteDTOList;
	}

}
