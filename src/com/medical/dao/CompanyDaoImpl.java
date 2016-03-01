package com.medical.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.medical.entity.Company;

public class CompanyDaoImpl implements CompanyDao {

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
	public List<Company> findById(int id) {
		// TODO Auto-generated method stub
		System.out.println("CompanyDaoImpl:find a company");
		return (List<Company>)getHibernateTemplate().find("from Company where c_id = ?", id);
	}

	@Override
	public Integer addCompany(Company com) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(com);
	}

	@Override
	public void modifyCompany(Company com) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteCompany(Company com) {
		// TODO Auto-generated method stub

	}

}
