package com.medical.service;

import java.util.List;

import com.medical.dao.ApplicationDao;
import com.medical.entity.Application;

public class ApplicationManageImpl implements ApplicationManage {

	private ApplicationDao applicationDao;

	public ApplicationDao getApplicationDao() {
		return applicationDao;
	}

	public void setApplicationDao(ApplicationDao applicationDao) {
		this.applicationDao = applicationDao;
	}
	@Override
	public List<Application> findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addApplication(Application ap) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modifyApplication(Application ap) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteApplication(Application ap) {
		// TODO Auto-generated method stub

	}

}
