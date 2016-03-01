package com.medical.service;

import java.util.List;

import com.medical.dao.AccountDao;
import com.medical.entity.Account;

public class AccountManageImpl implements AccountDao {
	private AccountDao accountDao;

	public AccountDao getAccountDao() {
		return accountDao;
	}

	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

	@Override
	public List<Account> findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer addAccount(Account ac) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modifyAccount(Account ac) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteAccount(Account ac) {
		// TODO Auto-generated method stub

	}


}
