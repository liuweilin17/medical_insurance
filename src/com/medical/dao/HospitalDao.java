package com.medical.dao;

import java.util.List;

import com.medical.entity.Hospital;

public interface HospitalDao {
	public List<Hospital> findById(int id);
	public Integer addHospital(Hospital hos);
	public void modifyHospital(Hospital hos);
	public void deleteHospital(Hospital hos);
}
