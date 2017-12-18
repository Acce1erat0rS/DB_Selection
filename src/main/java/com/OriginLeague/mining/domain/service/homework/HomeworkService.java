package com.OriginLeague.mining.domain.service.homework;

import java.util.Date;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.OriginLeague.mining.domain.model.Homework;
import com.OriginLeague.mining.domain.model.User;

public interface HomeworkService {
	void save(Homework homework, String chapter, String content, Date deadline);

	Homework findOne(Integer id);

	Page<Homework> findAll(Pageable pageable);

	Page<Homework> findByChapterLike(String chapter, Pageable pageable);

	void delete(Homework homework);
}
