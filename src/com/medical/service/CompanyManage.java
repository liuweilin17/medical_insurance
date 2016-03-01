package com.medical.service;

import java.util.List;

import com.medical.entity.Company;

	public interface CompanyManage {
	public List<Company> findById(int id);
	public void addCompany(Company com);
	public void modifyCompany(Company com);
	public void deleteCompany(Company com);
}
