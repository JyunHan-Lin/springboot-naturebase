package com.example.demo.repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.model.entity.Behavior;
import com.example.demo.model.entity.Discuss;

@Repository
public interface BehaviorRepository extends JpaRepository<Behavior, Integer>{
    
	public List<Behavior> findByDiscuss_Id(Integer discussId);
    
	@Query("SELECT b FROM Behavior b LEFT JOIN FETCH b.user WHERE b.discuss.id = :discussId")
	public List<Behavior> findByDiscuss_IdFetchUser(@Param("discussId") Integer discussId);

	// 查詢 userId 和 discussId 的行為
    @Query("SELECT b FROM Behavior b WHERE b.discuss.id = :discussId AND b.discuss.user.id = :userId")
    public List<Behavior> findByDiscussIdAndUserId(@Param("discussId") Integer discussId, @Param("userId") Integer userId);

    public List<Behavior> findByDate(LocalDate date);

    public void deleteByDiscuss_Id(Integer discussId);

    public int countByDiscuss_Id(Integer discussId);

    public List<Behavior> findByDiscuss_IdAndDateAfter(Integer discussId, LocalDate date);
}
