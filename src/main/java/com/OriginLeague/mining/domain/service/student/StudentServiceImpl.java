package com.OriginLeague.mining.domain.service.student;

import com.OriginLeague.mining.domain.common.exception.ResourceNotFoundException;
import com.OriginLeague.mining.domain.model.Student;
import com.OriginLeague.mining.domain.repository.student.StudentRepository;
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
public class StudentServiceImpl implements StudentService{

    @Inject
    protected StudentRepository studentRepository;

    @Inject
    protected PasswordEncoder passwordEncoder;

    @Override
    public void save(Student student) {
        studentRepository.save(student);
    }

    @Override
    @Transactional(readOnly = true)
    public Student findOne(String id) {
        Student student = studentRepository.findOne(id);
        if (student == null) {
            throw new ResourceNotFoundException("Student [id=" + id
                    + "] is not found.");
        }
        return student;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<Student> findAll(Pageable pageable) {
        Page<Student> page = studentRepository.findAll(pageable);
        return page;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<Student> findByNameLike(String name, Pageable pageable) {
        String query = name; // TODO escape
        Page<Student> page = studentRepository.findByNameLike(query, pageable);
        return page;
    }

    @Override
    public void delete(Student student) {
        studentRepository.delete(student);
    }

}
