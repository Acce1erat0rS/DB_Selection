package com.OriginLeague.mining.domain.service.teacher;

import com.OriginLeague.mining.domain.model.Teacher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface TeacherService {
    void save(Teacher teacher);

    Teacher findOne(String id);

    Page<Teacher> findAll(Pageable pageable);

    Page<Teacher> findByNameLike(String name, Pageable pageable);

    void delete(Teacher teacher);

    void upsave(Teacher teacher);
}
