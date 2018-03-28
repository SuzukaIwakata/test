package com.internousdev.ecsite_a.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite_a.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware {
	public Map<String, Object> session;
	private String id;
	private String itemName;
	private String itemPrice;
	private String count;
	private String pay;
	private ArrayList<BuyItemDTO> buyItemDTOList=new ArrayList<>();

	public String execute() {
		String result = SUCCESS;
		System.out.println(id);
		System.out.println(itemName);
		System.out.println(itemPrice);
		System.out.println(count);
		System.out.println(pay);

		String[] idList = id.split(", ",0);
		String[] itemNameList = itemName.split(", ",0);
		String[] itemPriceList = itemPrice.split(", ",0);
		String[] countList = count.split(", ",0);


		int totalPrice = 0;

		for(int i=0; i < idList.length; i++){
			if(Integer.parseInt(countList[i].toString()) > 0){
				BuyItemDTO dto = new BuyItemDTO();
				dto.setId(Integer.parseInt(idList[i].toString()));
				dto.setItemName(itemNameList[i].toString());
				dto.setItemPrice(itemPriceList[i].toString());
				dto.setCount(countList[i].toString());
				buyItemDTOList.add(dto);

				totalPrice += ( Integer.parseInt(itemPriceList[i].toString()) * Integer.parseInt(countList[i].toString()));
			}
		}


		session.put("list", buyItemDTOList);
//		int intCount = Integer.parseInt(session.get("count").toString());
//		int intPrice = Integer.parseInt(session.get("buyItem_price").toString());
//		session.put("total_price", intCount * intPrice);
		session.put("total_price", totalPrice);


		String payment;
		if (pay.equals("1")) {
			payment = "現金払い";
			session.put("pay", payment);
		} else {
			payment = "クレジットカード";
			session.put("pay", payment);
		}
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



	public String getItemPrice() {
		return itemPrice;
	}



	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}


	public Map<String, Object> getSession() {
		return session;
	}


	public String getPay() {
		return pay;
	}



	public String getCount() {
		return count;
	}



	public void setCount(String count) {
		this.count = count;
	}



	public void setPay(String pay) {
		this.pay = pay;
	}


	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ArrayList<BuyItemDTO> setBuyItemList(){
		return this.buyItemDTOList;
	}

}
