package com.OriginLeague.mining.domain.service.key;


import java.util.Date;

import javax.inject.Inject;

import com.OriginLeague.mining.domain.service.key.KeyService;
import org.joda.time.DateTime;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.OriginLeague.mining.domain.common.exception.ResourceNotFoundException;
import com.OriginLeague.mining.domain.model.KeyPoint;
import com.OriginLeague.mining.domain.repository.key.KeyPointRepository;

@Service
@Transactional
public class KeyServiceImpl implements KeyService {

    @Inject
    protected KeyPointRepository keyPointRepository;

    @Inject
    protected PasswordEncoder passwordEncoder;

    @Override
    public void save(KeyPoint keyPoint) {
        Date now = new DateTime().toDate();
        if (keyPoint.getCreatedAt() == null) {
            keyPoint.setCreatedAt(now);
        }

        keyPoint.setUpdatedAt(now);

        keyPoint.setAgreed(1);

        keyPointRepository.save(keyPoint);
    }

    @Override
    @Transactional(readOnly = true)
    public KeyPoint findOne(Integer id) {
        KeyPoint keyPoint = keyPointRepository.findOne(id);
        if (keyPoint == null) {
            throw new ResourceNotFoundException("KeyPoint [id=" + id
                    + "] is not found.");
        }
        return keyPoint;
    }

    @Override
    @Transactional()
    public void add(Integer id){
        KeyPoint keyPoint = keyPointRepository.findOne(id);
        if (keyPoint == null) {
            throw new ResourceNotFoundException("KeyPoint [id=" + id
                    + "] is not found.");
        }
        keyPointRepository.add(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Page<KeyPoint> findAll(Pageable pageable) {
        Page<KeyPoint> page = keyPointRepository.findAll(pageable);
        return page;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<KeyPoint> findByNameLike(String name, Pageable pageable) {
        String query = name; // TODO escape
        Page<KeyPoint> page = keyPointRepository.findByNameLike(query, pageable);
        return page;
    }

    @Override
    public void delete(KeyPoint keyPoint) {
        keyPointRepository.delete(keyPoint);
    }

}
