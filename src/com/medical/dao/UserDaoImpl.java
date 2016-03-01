package com.medical.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.medical.entity.User;

public class UserDaoImpl implements UserDao {
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
	public List<User> findById(int id) {
		// TODO Auto-generated method stub
		System.out.println("UserDaoImpl:find a user");
		return (List<User>)getHibernateTemplate().find("from User where u_id = ?", id);
	}

	@Override
	public Integer addUser(User user) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(user);
	}

	@Override
	public void modifyUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		
	}

	

}
