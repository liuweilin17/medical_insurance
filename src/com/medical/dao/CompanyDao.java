package com.medical.dao;

import java.util.List;

import com.medical.entity.Company;

public interface CompanyDao {
	public List<Company> findById(int id);
	public List<Company> findAll();
	public Integer addCompany(Company com);
	public void modifyCompany(Company com);
	public void deleteCompany(Company com);
}
