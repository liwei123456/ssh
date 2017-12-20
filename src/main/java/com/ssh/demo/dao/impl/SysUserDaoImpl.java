package com.ssh.demo.dao.impl;

import com.ssh.demo.dao.SysUserDao;
import com.ssh.demo.model.SysUser;
import com.ssh.demo.dao.base.BaseHibernateSupport;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SysUserDaoImpl extends BaseHibernateSupport implements SysUserDao{

    @Override
    public SysUser findUserByLoginName(String userName) {
        String hql = "from SysUser u where u.user_name = 'admin' and u.password = '123456'";
        List<SysUser> sysUserList = (List<SysUser>) this.getHibernateTemplate().find(hql);
        if(sysUserList.size()>0){
            return sysUserList.get(0);
        }
        return null;
    }
}
