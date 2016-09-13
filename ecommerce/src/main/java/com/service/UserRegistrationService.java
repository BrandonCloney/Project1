package com.service;

import java.util.List;

import com.model.UserRegistration;

public interface UserRegistrationService 
{
	public void addUserRegistration(UserRegistration u);
	public UserRegistration getUserRegistrationById(int id);
	public List<UserRegistration> listUsers();
}
