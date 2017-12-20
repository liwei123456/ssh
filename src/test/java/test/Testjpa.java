package test;

import com.ssh.demo.model.SysUser;
import org.junit.Test;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

/**
 * Created by Administrator on 2017/12/20.
 */
public class Testjpa {

    @Test
    public void testjpa() {
        String persistenceUnitName = "myJPA";  // persistence.xml配置里的unit name，可以改变

        // 1.创建EntityManagerFactory
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(persistenceUnitName);
        // 2.创建EntityManager
        EntityManager entityManager = factory.createEntityManager();
        // 3.创建、开启事务
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        // 4.进行持久化
        SysUser user = new SysUser();
        user.setUserName("hason");
        user.setAge(18);
        user.setPassword("123456");
        entityManager.persist(user);
        // 5.提交事务
        transaction.commit();
        // 6.关闭EntityManager
        entityManager.close();
        // 7.关闭EntityManagerFacoty
        factory.close();
    }
}
