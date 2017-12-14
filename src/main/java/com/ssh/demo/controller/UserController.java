package com.ssh.demo.controller;

import java.util.HashMap;
import java.util.Map;

import com.ssh.demo.service.SysUserService;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class UserController extends ActionSupport{

	private Logger log=Logger.getLogger(this.getClass());
    private SysUserService sysUserService;
	
	private int loginCode;
	
	public String login() {
		loginCode = 1;
		return "json";
	}
	
	public String main(){
		return "success";
	}
	
	/*           get                */
	public int getLoginCode() {
		return loginCode;
	}

	public void setLoginCode(int loginCode) {
		this.loginCode = loginCode;
	}
}
