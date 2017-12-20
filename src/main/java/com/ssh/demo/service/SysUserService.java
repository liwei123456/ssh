package com.ssh.demo.service;

import com.ssh.demo.model.SysUser;

public interface SysUserService {

    public SysUser findUserByLoginName(String userName);
}
