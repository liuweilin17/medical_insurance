package com.medical.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.medical.entity.Hospital;

public class HospitalDaoImpl implements HospitalDao {
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
	public List<Hospital> findById(int id) {
		// TODO Auto-generated method stub
		System.out.println("HospitalDaoImpl:find a hospital " + id);
		return (List<Hospital>)getHibernateTemplate().find("from Hospital where h_id = ?", id);
	}

	@Override
	public Integer addHospital(Hospital hos) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(hos);
	}

	@Override
	public void modifyHospital(Hospital hos) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteHospital(Hospital hos) {
		// TODO Auto-generated method stub

	}

}
