package com.medical.service;

import java.util.List;

import javax.annotation.Resource;

import com.medical.dao.UserDao;
import com.medical.entity.User;

public class UserManageImpl implements UserManage {

	 
	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	@Override
	public List<User> findById(int id) {
		// TODO Auto-generated method stub
		return userDao.findById(id);
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userDao.addUser(user);
	}

	@Override
	public void modifyUser(User user) {
		// TODO Auto-generated method stub
		userDao.modifyUser(user);
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		userDao.deleteUser(user);
	}

	@Override
	public List<User> findFlag0() {
		// TODO Auto-generated method stub
		return userDao.findFlag0();
	}

}
