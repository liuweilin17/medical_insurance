package com.medical.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.medical.entity.Application;

public class ApplicationDaoImpl implements ApplicationDao {
	private HibernateTemplate ht = null;
	private SessionFactory sessionFactory;
	                       
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	private HibernateTemplate getHibernateTemplate(){
		if(ht == null){
			ht = new HibernateTemplate(sessionFactory);
		}
		return ht;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public List<Application> findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer addApplication(Application ap) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modifyApplication(Application ap) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteApplication(Application ap) {
		// TODO Auto-generated method stub

	}

}
