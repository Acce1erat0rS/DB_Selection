package com.OriginLeague.mining.domain.service.teacher;

import com.OriginLeague.mining.domain.common.exception.ResourceNotFoundException;
import com.OriginLeague.mining.domain.model.Teacher;
import com.OriginLeague.mining.domain.repository.teacher.TeacherRepository;
import org.joda.time.DateTime;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.Date;

@Service
@Transactional
public class TeacherServiceImpl implements TeacherService{

    @Inject
    protected TeacherRepository teacherRepository;

    @Inject
    protected PasswordEncoder passwordEncoder;

    @Override
    public void save(Teacher teacher) {
        teacherRepository.save(teacher);
    }

    @Override
    @Transactional(readOnly = true)
    public Teacher findOne(String id) {
        Teacher teacher = teacherRepository.findOne(id);
        if (teacher == null) {
            throw new ResourceNotFoundException("Teacher [id=" + id
                    + "] is not found.");
        }
        return teacher;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<Teacher> findAll(Pageable pageable) {
        Page<Teacher> page = teacherRepository.findAll(pageable);
        return page;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<Teacher> findByNameLike(String name, Pageable pageable) {
        String query = name; // TODO escape
        Page<Teacher> page = teacherRepository.findByNameLike(query, pageable);
        return page;
    }

    @Override
    public void delete(Teacher teacher) {
        teacherRepository.delete(teacher);
    }

}