package com.medical.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.medical.entity.Consumption;
import com.medical.entity.User;
import com.medical.redis.Md5Util;

public class ConsumptionDaoImpl implements ConsumptionDao {
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
	public List<Consumption> findByHid(int id) {
		// TODO Auto-generated method stub
		return (List<Consumption>)getHibernateTemplate().find("from Consumption where h_id = ?", id);
	}

	@Override
	public List<Consumption> findByUid(int id) {
		// TODO Auto-generated method stub
		return (List<Consumption>)getHibernateTemplate().find("from Consumption where u_id = ?", id);
	}

	@Override
	public Integer addConsumption(Consumption con) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(con);
	}

	@Override
	public void modifyConsumption(Consumption con) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(con);
	}

	@Override
	public void deleteConsumption(Consumption con) {
		// TODO Auto-generated method stub

	}
	@Override
	public List<Consumption> findById(int id) {
		// TODO Auto-generated method stub
		return (List<Consumption>)getHibernateTemplate().find("from Consumption where con_id = ?",id);
	}

}
