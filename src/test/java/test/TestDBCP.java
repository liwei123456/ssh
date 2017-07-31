package test;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbcp.BasicDataSource;
import org.junit.Test;

/**
 * dbcp测试
 * @author Administrator
 *
 */
public class TestDBCP {

	@Test
	public void test(){
		//1.创建BasicDataSource对象 
        BasicDataSource ds = new BasicDataSource();
        //2.给属性赋值 driver url user password  
        ds.setDriverClassName("oracle.jdbc.driver.OracleDriver");
        ds.setUrl("jdbc:oracle:thin:@localhost:1521:orcl");
        ds.setUsername("ssmdemo");
        ds.setPassword("123456");
        //默认连接池中有8个连接//设置最大的活动连接数  
        ds.setMaxActive(10);
        //设置等待时间  
        ds.setMaxWait(3000);
        //3.获得连接  
        for(int i=0;i<11;i++){
        	Connection con = null;
        	try{
        		con = ds.getConnection();
        	}catch (SQLException e){
        		System.out.println("错误");
        	}
            System.out.println(con);
        }
	}
	
	public void test2(){
		
	}
	
}
