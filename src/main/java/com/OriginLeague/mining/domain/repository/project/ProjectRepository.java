package com.OriginLeague.mining.domain.repository.project;

import com.OriginLeague.mining.domain.model.KeyPoint;
import com.OriginLeague.mining.domain.model.Project;
import org.hibernate.annotations.NamedQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ProjectRepository extends JpaRepository<Project, String> {

//    @Query(value = "SELECT x FROM project x WHERE x.Name LIKE '%:Name%' ORDER BY x.id", countQuery = "SELECT COUNT(x) FROM project x WHERE x.Name LIKE :Name%")
//    Page<Project> findByNameLike(@Param("name") String name, Pageable page);

//    @Modifying
//    @Query(value = "update project set ChoosenNum = ChoosenNum+1 where pid = :pid")
//    void add(@Param("pid") String pid);

//    @Query(value = "select * from project p where p.PID=:PID",nativeQuery=true)
//    Page<Project> findByProject_PID(@Param("PID") String pid,Pageable page);
}
