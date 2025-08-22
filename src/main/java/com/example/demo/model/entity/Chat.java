package com.example.demo.model.entity;

import lombok.Data;

@Data
public class Chat {
	private String from; // 發送者名稱
	private String content; // 訊息內容
}