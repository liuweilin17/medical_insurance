package com.medical.service;

import java.util.List;

import com.medical.entity.User;

public interface UserManage {
	public List<User> findById(int id);
	public List<User> findFlag0();
	public void addUser(User user);
	public void modifyUser(User user);
	public void deleteUser(User user);
}
