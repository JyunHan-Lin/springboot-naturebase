package com.example.demo.service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import com.example.demo.model.dto.DiscussDTO;
import com.example.demo.model.entity.Discuss;
import com.example.demo.model.entity.Tag;

public interface DiscussService {
	
	public DiscussDTO createDiscuss(DiscussDTO discussDTO);
	public List<DiscussDTO>getAllDiscuss();
	public Optional<DiscussDTO> getDiscussById(Integer id);
	public Optional<Discuss> getDiscussEntityById(Integer id);
	public List<DiscussDTO> getDiscussByUserId(Integer id);
	public void updateDiscuss(Integer discussId, Integer userId, DiscussDTO discussDTO);
	public void updateDiscuss(Integer id, String title, String description, String tag, String youtubeVideoId, Boolean isPublic, LocalDateTime createdTime, Integer userId, String creatorName, Tag tagName);
	public void deleteDiscuss(Integer discussId, Integer userId, DiscussDTO discussDTO);
	public boolean hasUserFavorited(Integer userId, Integer discussId);
	public void addFavorite(Integer userId, Integer discussId);
	// 取得所有公開討論串
	public List<DiscussDTO> getPublicDiscussList();
	// 取得未公開(私人)討論串
	public List<DiscussDTO> getMyPrivateDiscuss(Integer userId);
	// 取得收藏的公開討論串
	public List<DiscussDTO> getMyFavoritePublicDiscuss(Integer userId);
	public List<DiscussDTO> searchDiscusses(String keyword);
	public void removeFavorite(Integer userId, Integer discussId);
	public Map<Integer, Integer> getFavoriteCountMap();
}