package com.medical.service;

import java.util.List;

import com.medical.entity.Application;

public interface ApplicationManage {
	public List<Application> findById(int id);
	public void addApplication(Application ap);
	public void modifyApplication(Application ap);
	public void deleteApplication(Application ap);
}
