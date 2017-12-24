package com.OriginLeague.mining.domain.service.firstchoice;

import com.OriginLeague.mining.domain.model.firstchoice;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


public interface FirstService {
    void save(firstchoice firstchoice);

    firstchoice findOne(String pid,String sid);

    Page<firstchoice> findAll(Pageable pageable);

    void add(String pid,String sid);

    Page<firstchoice> findByPID(String pid,Pageable pageable);

    void delete(firstchoice firstchoice);

    void finalize(String pid,String sid);

}
