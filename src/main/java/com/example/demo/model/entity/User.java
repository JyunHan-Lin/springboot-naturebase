package com.example.demo.model.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // 自動生成 id
	@Column(name = "id") // 資料表 user 中的預設欄位名稱
	private Integer id;	// 使用者 ID
	
	@Column(name = "user_name", unique = true, nullable = false, length = 50) 
	private String userName; 
	
	@Column(name = "password_hash", nullable = false) // 不寫 length 預設為255 
	private String passwordHash;
	
	@Column(name = "salt", nullable = false) // 不寫 length 預設為255 
	private String salt;
	
	@Column(name = "email", nullable = false, unique = true) 
	private String email;
	
	@Column(name = "active", nullable = false)
	private Boolean active;
	
	@Column(name = "role")  
	private String role;
	
	@OneToMany(mappedBy = "user", fetch = FetchType.LAZY)	// 一對多 (Discuss), 使用 Lazy 避免反覆查詢
	private List<Discuss> discusses;

}