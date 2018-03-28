package com.internousdev.ecsite_a.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite_a.dao.BuyItemDAO;
import com.internousdev.ecsite_a.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;

	public String execute(){
		String result="login";
		if(session.containsKey("id")){
			BuyItemDAO buyItemDAO=new BuyItemDAO();
			List<BuyItemDTO> buyItemDTO=buyItemDAO.getBuyItemInfo();
			session.put("list",buyItemDTO);
			result=SUCCESS;
		}
		return result;
	}

	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}

	public Map<String,Object>getSession(){
		return this.session;
	}

}
