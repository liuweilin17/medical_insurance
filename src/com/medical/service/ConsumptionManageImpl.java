package com.medical.service;

import java.util.List;

import com.medical.dao.ConsumptionDao;
import com.medical.entity.Consumption;

public class ConsumptionManageImpl implements ConsumptionManage {

	private ConsumptionDao consumptionDao;

	public ConsumptionDao getConsumptionDao() {
		return consumptionDao;
	}

	public void setConsumptionDao(ConsumptionDao consumptionDao) {
		this.consumptionDao = consumptionDao;
	}
	
	@Override
	public List<Consumption> findByHid(int id) {
		// TODO Auto-generated method stub
		return consumptionDao.findByHid(id);
	}

	@Override
	public void addConsumption(Consumption con) {
		// TODO Auto-generated method stub
		consumptionDao.addConsumption(con);
	}

	@Override
	public void modifyConsumption(Consumption con) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteConsumption(Consumption con) {
		// TODO Auto-generated method stub

	}


}
