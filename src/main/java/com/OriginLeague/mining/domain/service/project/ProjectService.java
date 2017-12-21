package com.OriginLeague.mining.domain.service.project;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.OriginLeague.mining.domain.model.Project;


public interface ProjectService {
    void save(Project Project);

    Project findOne(String id);

    Page<Project> findAll(Pageable pageable);

    Page<Project> findByNameLike(String name, Pageable pageable);

    void add(String id);

    void delete(Project Project);

    Page<Project> findByPID(String PID,Pageable pageable);
}
