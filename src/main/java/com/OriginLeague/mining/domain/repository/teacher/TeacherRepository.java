package com.OriginLeague.mining.domain.repository.teacher;

import com.OriginLeague.mining.domain.model.Teacher;
import com.OriginLeague.mining.domain.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface TeacherRepository extends JpaRepository<Teacher, String> {
    @Query(value = "SELECT x FROM Teacher x WHERE x.name LIKE :name% ORDER BY x.id", countQuery = "SELECT COUNT(x) FROM Teacher x WHERE x.name LIKE :name%")
    Page<Teacher> findByNameLike(@Param("name") String name, Pageable page);
}
