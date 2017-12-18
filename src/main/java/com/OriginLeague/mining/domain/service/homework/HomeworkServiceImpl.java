package com.OriginLeague.mining.domain.service.homework;

import java.util.Date;

import javax.inject.Inject;

import org.joda.time.DateTime;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.OriginLeague.mining.domain.common.exception.ResourceNotFoundException;
import com.OriginLeague.mining.domain.model.Homework;
import com.OriginLeague.mining.domain.repository.homework.HomeworkRepository;

@Service
@Transactional
public class HomeworkServiceImpl implements HomeworkService {

    @Inject
    protected HomeworkRepository homeworkRepository;

//    @Inject
//    protected PasswordEncoder passwordEncoder;

    @Override
    public void save(Homework homework, String chapter, String content,Date deadline) {
        homework.setChapter(chapter);
        homework.setContent(content);
        homework.setDeadline(deadline);
        
        Date now = new DateTime().toDate();
        if (homework.getStartTime() == null) {
            homework.setStartTime(now);
        }

        homework.setUpdateTime(now);
        homeworkRepository.save(homework);
    }

    @Override
    @Transactional(readOnly = true)
    public Homework findOne(Integer id) {
        Homework homework = homeworkRepository.findOne(id);
        if (homework == null) {
            throw new ResourceNotFoundException("Homework [id=" + id
                    + "] is not found.");
        }
        return homework;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<Homework> findAll(Pageable pageable) {
        Page<Homework> page = homeworkRepository.findAll(pageable);
        return page;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<Homework> findByChapterLike(String chapter, Pageable pageable) {
        String query = chapter; // TODO escape
        Page<Homework> page = homeworkRepository.findByChapterLike(query, pageable);
        return page;
    }

    @Override
    public void delete(Homework homework) {
        homeworkRepository.delete(homework);
    }

}
