package com.medical.service;

import java.util.List;

import com.medical.entity.Consumption;

public interface ConsumptionManage {
	public List<Consumption> findByHid(int id);
	public void addConsumption(Consumption con);
	public void modifyConsumption(Consumption con);
	public void deleteConsumption(Consumption con);
}
