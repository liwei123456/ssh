package com.ssh.demo.controller;

import java.util.HashMap;
import java.util.Map;

import com.ssh.demo.model.SysUser;
import com.ssh.demo.service.SysUserService;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class UserController extends ActionSupport{

	private Logger log=Logger.getLogger(this.getClass());
    @Autowired
    private SysUserService sysUserService;
	
	private int loginCode;
    private String userName;
	
	public String login() {
        SysUser sysUser = sysUserService.findUserByLoginName(userName);
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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
