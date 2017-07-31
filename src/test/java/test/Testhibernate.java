package test;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import com.ssh.demo.model.SysUser;
import com.ssh.demo.util.HibernateUtils;

public class Testhibernate {
	
	@Test
	public void createAndStorePerson(){
        // 打开线程安全的Session对象  
        Session session = HibernateUtils.currentSession();  
        // 打开事务  
        Transaction tx = session.beginTransaction();  
        // 创建Person对象  
//        SysUser user = new SysUser();
//        user.setUserName("VipMao");
//        user.setAge((short) 24);
//        user.setPassword("123456");
//        session.save(user);
        List<SysUser> userList = session.createQuery("from SysUser").list();
        tx.commit();  
        //通过工具类关闭Session  
        HibernateUtils.closeSession();
    }
}
