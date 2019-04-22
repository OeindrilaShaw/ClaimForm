package com.waytopolicy.dao;

import java.util.List;

import com.waytopolicy.model.User;

public interface UserDao {
	public User findById(String emailId);
	//**********ETA AMAR BANANO***********//////
	public void updatePassword(User dbUser);

	////EI OBDI//////////////////

}
