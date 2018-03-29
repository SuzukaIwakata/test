package com.internousdev.ecsite_a.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite_a.dao.UserCreateCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserCreateCompleteAction extends ActionSupport implements SessionAware{
	private String loginUserId;
	private String loginPassword;
	private String userName;
	private String userAddress;
	private String userPhone;
	public Map<String,Object>session;
	private UserCreateCompleteDAO userCreateCompleteDAO=new UserCreateCompleteDAO();

	public String execute()throws SQLException{
		userCreateCompleteDAO.createUser(session.get("loginUserId").toString(),
				session.get("loginPassword").toString(),
				session.get("userName").toString(),
				session.get("userAddress").toString(),
				session.get("userPhone").toString());
		String result=SUCCESS;
		return result;
	}

	public String getLoginUserId(){
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId){
		this.loginUserId=loginUserId;
	}

	public String getLoginPassword(){
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword){
		this.loginPassword=loginPassword;
	}

	public String getUserName(){
		return userName;
	}

	public void setUserName(String userName){
		this.userName=userName;
	}

	public String getUserAddress(){
		return userAddress;
	}

	public void setUserAddress(String userAddress){
		this.userAddress=userAddress;
	}

	public String getUserPhone(){
		return userPhone;
	}

	public void setUserPhone(String userPhone){
		this.userPhone=userPhone;
	}

	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}

}
