package com.example.demo.service;

import org.springframework.stereotype.Component;


@Component
public interface ChatService {
	// 每秒鐘推送一次時間到 首頁
	public void sendMessageToAll();
}