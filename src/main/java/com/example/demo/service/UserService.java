// UserService
package com.example.demo.service;

import java.time.LocalDateTime;

public interface UserService {
	public boolean addUser(String userName, String password, String confirmPassword, String email, Boolean active, String role);
	public boolean confirmEmail(String userName);
	public boolean changePassword(String email, String oldPassword, String newPassword, String confirmPassword);
}