package com.OriginLeague.mining.domain.service.file;

import com.OriginLeague.mining.domain.model.file;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface FileService {
    void save(file f);

    file findOne(Integer id);

    Page<file> findAll(Pageable pageable);

    Page<file> findByNameLike(String filename, Pageable pageable);

    void add(Integer id);

    void delete(file f);
}
