package com.OriginLeague.mining.domain.repository.file;

import com.OriginLeague.mining.domain.model.file;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface FileRepository extends JpaRepository<file, Integer> {
    @Query(value = "SELECT x FROM file x WHERE x.name LIKE %:name% ORDER BY x.id", countQuery = "SELECT COUNT(x) FROM KeyPoint x WHERE x.name LIKE :name%")
    Page<file> findByNameLike(@Param("name") String name, Pageable page);

    @Modifying
    @Query(value = "update file set downloaded=download_time+1 where id = :id")
    void add(@Param("id") Integer id);
}
