package com.service;

import java.util.List;

import com.entity.User;

public interface UserService {
	List<User> selectUsers(int indexPage);
	void updateUserStatus(int id,String status);
}
