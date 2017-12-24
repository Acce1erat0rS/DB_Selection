package com.OriginLeague.mining.domain.service.student;

import com.OriginLeague.mining.domain.model.Student;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface StudentService {
    void save(Student student);

    Student findOne(String id);

    Page<Student> findAll(Pageable pageable);

    Page<Student> findByNameLike(String name, Pageable pageable);

    void delete(Student student);

    void finalize(String sid,String pid);
}
