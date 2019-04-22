package com.waytopolicy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.waytopolicy.dao.UserDao;
import com.waytopolicy.model.User;

public class UserServiceImpl implements UserService {

	@Autowired
	public UserDao userDao;
	@Override
	@Transactional
	public User findById(String emailId) {
		
		return userDao.findById(emailId);
	}
	//********************ETA AMAR BANANO***********///////////
	@Override
	public void updatePassword(User dbUser) {
		// TODO Auto-generated method stub
		System.out.println("In service- ---------------------------------------");
		userDao.updatePassword(dbUser);
	}
	
	
	
	//////////EI OBDI////////////////////
	

}
