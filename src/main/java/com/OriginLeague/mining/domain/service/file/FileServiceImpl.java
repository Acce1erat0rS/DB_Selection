package com.OriginLeague.mining.domain.service.file;

import com.OriginLeague.mining.domain.common.exception.ResourceNotFoundException;
import com.OriginLeague.mining.domain.model.file;
import com.OriginLeague.mining.domain.repository.file.FileRepository;
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
public class FileServiceImpl implements FileService {

    @Inject
    protected FileRepository fileRepository;

    @Inject
    protected PasswordEncoder passwordEncoder;

    @Override
    public void save(file f) {
        Date now = new DateTime().toDate();
        if (f.getCreatedAt() == null) {
            f.setCreatedAt(now);
        }


        fileRepository.save(f);
    }

    @Override
    @Transactional(readOnly = true)
    public file findOne(Integer id) {
        file f = fileRepository.findOne(id);
        if (f == null) {
            throw new ResourceNotFoundException("file [id=" + id
                    + "] is not found.");
        }
        return f;
    }

    @Override
    @Transactional()
    public void add(Integer id){
        file f = fileRepository.findOne(id);
        if (f == null) {
            throw new ResourceNotFoundException("file [id=" + id
                    + "] is not found.");
        }
        fileRepository.add(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Page<file> findAll(Pageable pageable) {
        Page<file> page = fileRepository.findAll(pageable);
        return page;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<file> findByNameLike(String name, Pageable pageable) {
        String query = name; // TODO escape
        Page<file> page = fileRepository.findByNameLike(query, pageable);
        return page;
    }

    @Override
    public void delete(file f) {
        fileRepository.delete(f);
    }

}
