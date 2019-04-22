package com.waytopolicy.service;

import java.util.List;

import com.waytopolicy.model.User;


public interface UserService {
	public User findById(String emailId);
	///ETA AMAR BANANO/////////////
	public void updatePassword(User dbUser);
	////EI OBDI//////////

}
