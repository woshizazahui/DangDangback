package com.service;

import com.entity.Admin;

public interface AdminService {
	 Admin selectAdmin(String name,String password);
}
