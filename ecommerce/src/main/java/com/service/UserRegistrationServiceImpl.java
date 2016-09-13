package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserRegistrationDAOImpl;
import com.model.UserRegistration;

@Service
public class UserRegistrationServiceImpl implements UserRegistrationService {

	@Autowired
	UserRegistrationDAOImpl newuser;
	
	public void addUserRegistration(UserRegistration u) 
	{
		newuser.addUserRegistration(u);
	}

	public UserRegistration getUserRegistrationById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<UserRegistration> listUsers() {
		// TODO Auto-generated method stub
		return null;
	}

}
