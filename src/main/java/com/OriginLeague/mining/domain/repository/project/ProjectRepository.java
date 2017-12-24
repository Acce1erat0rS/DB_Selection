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

    @Query(value = "SELECT x FROM Project x WHERE x.name LIKE %:name% ORDER BY x.id", countQuery = "SELECT COUNT(x) FROM Project x WHERE x.name LIKE :name%")
    Page<Project> findByNameLike(@Param("name") String name, Pageable page);

//    @Modifying
//    @Query(value = "update project set ChoosenNum = ChoosenNum+1 where pid = :pid")
//    void add(@Param("pid") String pid);

    @Query(value = "select p from Project p where p.pid=:pid")
    Page<Project> findByProject_PID(@Param("pid") String pid,Pageable page);

    @Query(value = "select p from Project p where p.tid=:tid")
    Page<Project> findByProject_TID(@Param("tid") String tid,Pageable page);

    @Query(value = "select p from Project p where p.sid=:sid")
    Page<Project> findByProject_SID(@Param("sid") String sid,Pageable page);

    @Modifying
    @Query(value = "update project set SID=?2 where PID=?1",nativeQuery = true)
    int finalUpdate(String pid, String sid);
}
