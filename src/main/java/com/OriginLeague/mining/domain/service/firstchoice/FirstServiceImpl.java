//package com.OriginLeague.mining.domain.service.firstchoice;
//
//
//import com.OriginLeague.mining.domain.common.exception.ResourceNotFoundException;
//import com.OriginLeague.mining.domain.model.firstchoice;
//
//import com.OriginLeague.mining.domain.repository.firstchoice.FirstRepository;
//import org.joda.time.DateTime;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.Pageable;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import javax.inject.Inject;
//import java.util.Date;
//
//@Service
//@Transactional
//public class FirstServiceImpl implements FirstService {
//
//    @Inject
//    protected FirstRepository firstRepository;
//
//    @Inject
//    protected PasswordEncoder passwordEncoder;
//
//    @Override
//    public void save(firstchoice fc) {
//        Date now = new DateTime().toDate();
//        fc.setLogtime(now);
//        firstRepository.save(fc);
//    }
//
//    @Override
//    @Transactional(readOnly = true)
//    public firstchoice findOne(String id) {
//        firstchoice fc = firstRepository.findOne(id);
//        if (fc == null) {
//            throw new ResourceNotFoundException("firstchoice [id=" + id
//                    + "] is not found.");
//        }
//        return fc;
//    }
//
//    @Override
//    @Transactional()
//    public void add(String id){
//        firstchoice fc = firstRepository.findOne(id);
//        if (fc == null) {
//            throw new ResourceNotFoundException("firstchoice [id=" + id
//                    + "] is not found.");
//        }
////        projectRepository.add(id);
//    }
//
//    @Override
//    @Transactional(readOnly = true)
//    public Page<firstchoice> findAll(Pageable pageable) {
//        Page<firstchoice> page = firstRepository.findAll(pageable);
//        return page;
//    }
//
//    @Override
//    public void delete(firstchoice fc) {
//        firstRepository.delete(fc);
//    }
//
//}
