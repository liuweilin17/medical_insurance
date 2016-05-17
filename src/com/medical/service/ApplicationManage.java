package com.medical.service;

import java.util.List;

import com.medical.entity.Application;

public interface ApplicationManage {
	public List<Application> findById(int id);
	public List<Application> findByUid(int id);
	public List<Application> findByCid(int id);
	public int findStatus(int con_id, int c_id);
	public void addApplication(Application ap);
	public void modifyApplication(Application ap);
	public void deleteApplication(Application ap);
}
