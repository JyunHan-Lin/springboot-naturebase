package com.example.demo.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.entity.Discuss;

@Repository
public interface DiscussRepository extends JpaRepository<Discuss, Integer>{
	
	@Query("SELECT d FROM Discuss d JOIN FETCH d.user WHERE d.id = :discussId")
	public Optional<Discuss> findByIdWithUser(Integer discussId);
	public List<Discuss> findByUser_Id(Integer userId); // JPA 是用資料庫名稱建立方法
	public List<Discuss> findByIsPublicTrue();
	// 搜尋
	public List<Discuss> findByIsPublicTrueAndTitleContainingIgnoreCaseOrIsPublicTrueAndDescriptionContainingIgnoreCase(
	String titleKeyword, String descriptionKeyword);
}