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
	public List<Application> findByUid(int id) {
		// TODO Auto-generated method stub
		return applicationDao.findByUid(id);
	}

	@Override
	public void addApplication(Application ap) {
		// TODO Auto-generated method stub
		applicationDao.addApplication(ap);
	}

	@Override
	public void modifyApplication(Application ap) {
		// TODO Auto-generated method stub
		applicationDao.modifyApplication(ap);
	}

	@Override
	public void deleteApplication(Application ap) {
		// TODO Auto-generated method stub

	}

	@Override
	public int findStatus(int con_id, int c_id) {
		// TODO Auto-generated method stub
		int sta = -1;
		List<Application> applicationList = applicationDao.findByConidCid(con_id, c_id);
		int len = applicationList.size();
		if(len == 0){
			sta = -1;
		}else{
			sta = applicationList.get(0).getStatus();
		}
		return sta;
	}

	@Override
	public List<Application> findById(int id) {
		// TODO Auto-generated method stub
		return applicationDao.findById(id);
	}

	@Override
	public List<Application> findByCid(int id) {
		// TODO Auto-generated method stub
		return applicationDao.findByCid(id);
	}

}
