package com.internousdev.ecsite_a.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class GoHomeAction extends ActionSupport implements SessionAware{
	public Map<String,Object>sesison;

	public String execute(){
		return SUCCESS;
	}

	public Map<String,Object>getsession(){
		return this.sesison;
	}

	@Override
	public void setSession(Map<String,Object>session){
		this.sesison=session;
	}
}
