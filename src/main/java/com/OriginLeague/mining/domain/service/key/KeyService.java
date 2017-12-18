package com.OriginLeague.mining.domain.service.key;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.OriginLeague.mining.domain.model.KeyPoint;


public interface KeyService {
    void save(KeyPoint KeyPoint);

    KeyPoint findOne(Integer id);

    Page<KeyPoint> findAll(Pageable pageable);

    Page<KeyPoint> findByNameLike(String name, Pageable pageable);

    void add(Integer id);

    void delete(KeyPoint KeyPoint);
}
