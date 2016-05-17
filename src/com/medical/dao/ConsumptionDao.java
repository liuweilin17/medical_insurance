package com.medical.dao;

import java.util.List;

import com.medical.entity.Consumption;

public interface ConsumptionDao {
	public List<Consumption> findById(int id);
	public List<Consumption> findByHid(int id);
	public List<Consumption> findByUid(int id);
	public Integer addConsumption(Consumption con);
	public void modifyConsumption(Consumption con);
	public void deleteConsumption(Consumption con);
}
