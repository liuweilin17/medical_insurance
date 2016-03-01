package com.medical.service;

import java.util.List;

import com.medical.dao.CompanyDao;
import com.medical.entity.Company;

public class CompanyManageImpl implements CompanyManage {
	
	private CompanyDao companyDao;
	
	public CompanyDao getCompanyDao() {
		return companyDao;
	}

	public void setCompanyDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
	}

	@Override
	public List<Company> findById(int id) {
		// TODO Auto-generated method stub
		return companyDao.findById(id);
	}

	@Override
	public void addCompany(Company com) {
		// TODO Auto-generated method stub
		companyDao.addCompany(com);
	}

	@Override
	public void modifyCompany(Company com) {
		// TODO Auto-generated method stub
		companyDao.modifyCompany(com);
	}

	@Override
	public void deleteCompany(Company com) {
		// TODO Auto-generated method stub
		companyDao.deleteCompany(com);
	}

}
