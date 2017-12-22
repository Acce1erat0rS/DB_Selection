package com.OriginLeague.mining.domain.service.project;


import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;

import com.OriginLeague.mining.domain.repository.project.ProjectRepository;
import com.OriginLeague.mining.domain.service.project.ProjectService;
import org.joda.time.DateTime;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.OriginLeague.mining.domain.common.exception.ResourceNotFoundException;
import com.OriginLeague.mining.domain.model.Project;
import com.OriginLeague.mining.domain.repository.project.ProjectRepository;

@Service
@Transactional
public class ProjectServiceImpl implements ProjectService {

    @Inject
    protected ProjectRepository projectRepository;

    @Inject
    protected PasswordEncoder passwordEncoder;

    @Override
    public void save(Project project) {
        Date now = new DateTime().toDate();
        if (project.getCreatedAt() == null) {
            project.setCreatedAt(now);
        }

        project.setCreatedAt(now);

        project.setChosennum(1);

        projectRepository.save(project);
    }

    @Override
    @Transactional(readOnly = true)
    public Project findOne(String id) {
        Project project = projectRepository.findOne(id);
        if (project == null) {
            throw new ResourceNotFoundException("Project [id=" + id
                    + "] is not found.");
        }
        return project;
    }

    @Override
    @Transactional()
    public void add(String id){
        Project project = projectRepository.findOne(id);
        if (project == null) {
            throw new ResourceNotFoundException("Project [id=" + id
                    + "] is not found.");
        }
//        projectRepository.add(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Page<Project> findAll(Pageable pageable) {
        Page<Project> page = projectRepository.findAll(pageable);
        return page;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<Project> findByNameLike(String name, Pageable pageable) {
        String query = name; // TODO escape
        Page<Project> page = projectRepository.findByNameLike(query, pageable);
        return page;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<Project> findByPID(String pid, Pageable pageable) {
        Page<Project> page = projectRepository.findByProject_PID(pid, pageable);
        return page;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<Project> findByTID(String tid, Pageable pageable) {
        Page<Project> page = projectRepository.findByProject_TID(tid, pageable);
        return page;
    }

    @Override
    public void delete(Project project) {
        projectRepository.delete(project);
    }

}
