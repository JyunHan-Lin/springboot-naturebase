package com.example.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
	// 欄位名要符合資料表中的設定
	@Query(value = "select id, user_name, password_hash, salt, email, active, role from users where user_name=:userName", nativeQuery = true)
	public User getUser(String userName);
	public boolean existsByUserName(String userName);
	public Optional<User> findByUserName(String userName);
	public Optional<User> findByEmail(String email);
}