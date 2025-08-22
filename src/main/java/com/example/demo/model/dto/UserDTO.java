package com.example.demo.model.dto;

import java.time.LocalDateTime;
import java.util.List;

import lombok.Data;

@Data
public class UserDTO {
	private Integer id; // 使用者ID
	private String userName;// 使用者名稱
	private String email;	// 使用者Email
	private Boolean active;	// 是否認證
	private String role;	// 角色權限
	private LocalDateTime createTime; // 建立時間
	private List<DiscussDTO> discusses;
}