package com.OriginLeague.mining.domain.service.firstchoice;


import com.OriginLeague.mining.domain.common.exception.ResourceNotFoundException;
import com.OriginLeague.mining.domain.model.firstchoice;

import com.OriginLeague.mining.domain.repository.firstchoice.FirstRepository;
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
public class FirstServiceImpl implements FirstService {

    @Inject
    protected FirstRepository firstRepository;

    @Inject
    protected PasswordEncoder passwordEncoder;

    @Override
    public void save(firstchoice fc) {
        Date now = new DateTime().toDate();
        fc.setLogtime(now);
        firstRepository.save(fc);
    }

    @Override
    @Transactional(readOnly = true)
    public firstchoice findOne(String pid,String sid) {
        firstchoice fc = firstRepository.findfirstchoiceBySP(sid,pid);
        if (fc == null) {
            throw new ResourceNotFoundException("firstchoice [sid=" + sid+ "pid=" + sid
                    + "] is not found.");
        }
        return fc;
    }

    @Override
    @Transactional()
    public void add(String pid,String sid){
        firstchoice fc = firstRepository.findfirstchoiceBySP(sid,pid);
        if (fc != null) {
            throw new ResourceNotFoundException("firstchoice [id=" + pid
                    + "] is not found.");
        }
        fc = new firstchoice();
        Date now = new DateTime().toDate();
        fc.setPID(pid);
        fc.setSID(sid);
        fc.setLogtime(now);
        firstRepository.addChoose(sid,pid,now);
    }

    @Override
    @Transactional(readOnly = true)
    public Page<firstchoice> findAll(Pageable pageable) {
        Page<firstchoice> page = firstRepository.findAll(pageable);
        return page;
    }

    @Override
    public void delete(firstchoice fc) {
        firstRepository.delete(fc);
    }

    @Override
    public Page<firstchoice> findByPID(String pid,Pageable pageable){
        Page<firstchoice> page = firstRepository.findpjByPID(pid,pageable);
        return page;
    };

    @Override
    public void finalize(String pid,String sid){
        firstRepository.finalChosebyPID(pid);
        firstRepository.finalChosebySID(sid);
    }


}
