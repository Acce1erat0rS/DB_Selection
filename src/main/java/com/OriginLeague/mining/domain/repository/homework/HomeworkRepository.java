package com.OriginLeague.mining.domain.repository.homework;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.OriginLeague.mining.domain.model.Homework;

public interface HomeworkRepository extends JpaRepository<Homework, Integer> {
    @Query(value = "SELECT x FROM Homework x WHERE x.chapter LIKE :chapter% ORDER BY x.id", countQuery = "SELECT COUNT(x) FROM Homework x WHERE x.chapter LIKE :chapter%")
    Page<Homework> findByChapterLike(@Param("chapter") String chapter, Pageable page);
}
