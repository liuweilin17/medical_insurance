package com.medical.service;

import java.util.List;

import com.medical.entity.Account;

public interface AccountManage {
	public List<Account> findById(int id);
	public void addAccount(Account ac);
	public void modifyAccount(Account ac);
	public void deleteAccount(Account ac);
}
