package com.medical.dao;

import java.util.List;

import com.medical.entity.Application;

public interface ApplicationDao {
	public List<Application> findById(int id);
	public Integer addApplication(Application ap);
	public void modifyApplication(Application ap);
	public void deleteApplication(Application ap);
}
