package com.medical.dao;

import java.util.List;

import com.medical.entity.Account;

public interface AccountDao {
	public List<Account> findById(int id);
	public Integer addAccount(Account ac);
	public void modifyAccount(Account ac);
	public void deleteAccount(Account ac);
}
