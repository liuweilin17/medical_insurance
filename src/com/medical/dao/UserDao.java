package com.medical.dao;

import java.util.List;

import com.medical.entity.User;

public interface UserDao {
	public List<User> findById(int id);
	public List<User> findFlag0();
	public Integer addUser(User user);
	public void modifyUser(User user);
	public void deleteUser(User user);
}
