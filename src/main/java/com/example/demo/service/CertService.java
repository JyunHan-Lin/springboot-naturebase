package com.example.demo.service;

import com.example.demo.exception.PasswordInvalidException;
import com.example.demo.exception.UserNotFoundException;
import com.example.demo.model.dto.UserCert;

public interface CertService {
	public UserCert getCert(String userName, String password, String authCode, String sessionAuthCode) throws UserNotFoundException, PasswordInvalidException;

}
