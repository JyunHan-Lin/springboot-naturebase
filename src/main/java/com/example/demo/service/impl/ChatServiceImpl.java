package com.example.demo.service.impl;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.example.demo.model.entity.Chat;
import com.example.demo.service.ChatService;

@Component
public class ChatServiceImpl implements ChatService{
	
	@Autowired
	private SimpMessagingTemplate messagingTemplate;
	
	@Override
	// 每秒鐘推送一次時間到 room3
	@Scheduled(fixedRate = 1000)
	public void sendMessageToAll() {
		// 準備資料
		Chat chat = new Chat();
		chat.setFrom("電腦");
		chat.setContent("現在時刻:" + LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss")));
		// 發送資料
		messagingTemplate.convertAndSend("/topic/messages/room3", chat);
	}

}