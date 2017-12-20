package com.ssh.demo.dao.base;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/12/20.
 */
@Component("baseHibernateSupport")
public class BaseHibernateSupport extends HibernateDaoSupport {

    @Resource(name="sessionFactory")
    public void setSuperSessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
    }

    //  或者为其注入hibernateTemplate
//  @Resource(name="hibernateTemplate")
//  public void setSuperHibernateTemplate(HibernateTemplate hibernateTemplate){
//      super.setHibernateTemplate(hibernateTemplate);
//  }
}
