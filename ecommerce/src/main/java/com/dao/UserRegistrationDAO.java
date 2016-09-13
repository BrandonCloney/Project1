package com.dao;

import java.util.List;

import com.model.UserRegistration;

public interface UserRegistrationDAO 
{
	public void addUserRegistration(UserRegistration u);
	public UserRegistration getUserRegistrationById(int id);
	public List<UserRegistration> listUsers();
}
