package com.medical.service;

import java.util.List;

import com.medical.dao.HospitalDao;
import com.medical.entity.Hospital;

public class HospitalManageImpl implements HospitalManage {

	private HospitalDao hospitalDao;
	
	public HospitalDao getHospitalDao() {
		return hospitalDao;
	}
	public void setHospitalDao(HospitalDao hospitalDao) {
		this.hospitalDao = hospitalDao;
	}
	@Override
	public List<Hospital> findById(int id) {
		// TODO Auto-generated method stub
		return hospitalDao.findById(id);
	}

	@Override
	public void addHospital(Hospital hos) {
		// TODO Auto-generated method stub
		hospitalDao.addHospital(hos);
	}

	@Override
	public void modifyHospital(Hospital hos) {
		// TODO Auto-generated method stub
		hospitalDao.modifyHospital(hos);
	}

	@Override
	public void deleteHostpital(Hospital hos) {
		// TODO Auto-generated method stub
		hospitalDao.deleteHospital(hos);
	}

}
