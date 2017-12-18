package com.OriginLeague.mining.domain.repository.key;

import com.OriginLeague.mining.domain.model.KeyPoint;
import com.OriginLeague.mining.domain.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface KeyPointRepository extends JpaRepository<KeyPoint, Integer> {
    @Query(value = "SELECT x FROM KeyPoint x WHERE x.name LIKE %:name% ORDER BY x.id", countQuery = "SELECT COUNT(x) FROM KeyPoint x WHERE x.name LIKE :name%")
    Page<KeyPoint> findByNameLike(@Param("name") String name, Pageable page);

    @Modifying
    @Query(value = "update KeyPoint set agreed=agreed+1 where id = :id")
    void add(@Param("id") Integer id);
}
