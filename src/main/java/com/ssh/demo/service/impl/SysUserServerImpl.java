package com.ssh.demo.service.impl;

import com.ssh.demo.dao.SysUserDao;
import com.ssh.demo.model.SysUser;
import com.ssh.demo.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysUserServerImpl implements SysUserService {

    private SysUserDao sysUserDao;

    public SysUserDao getSysUserDao() {
        return sysUserDao;
    }

    public void setSysUserDao(SysUserDao sysUserDao) {
        this.sysUserDao = sysUserDao;
    }

    @Override
    public SysUser findUserByLoginName(String userName) {
        return sysUserDao.findUserByLoginName(userName);
    }
}
