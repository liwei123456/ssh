package com.ssh.demo.dao;

import com.ssh.demo.model.SysUser;

public interface SysUserDao {

    public SysUser findUserByLoginName(String userName);

}
