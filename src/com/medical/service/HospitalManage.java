package com.medical.service;

import java.util.List;

import com.medical.entity.Hospital;

public interface HospitalManage {
	public List<Hospital> findById(int id);
	public void addHospital(Hospital hos);
	public void modifyHospital(Hospital hos);
	public void deleteHostpital(Hospital hos);
}
