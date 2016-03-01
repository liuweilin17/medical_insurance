package com.medical.dao;

import java.util.List;

import com.medical.entity.Consumption;

public interface ConsumptionDao {
	public List<Consumption> findByHid(int id);
	public List<Consumption> findByUid(int id);
	public Integer addConsumption(Consumption con);
	public void modifyUser(Consumption con);
	public void deleteUser(Consumption con);
}
