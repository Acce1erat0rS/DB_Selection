package com.OriginLeague.mining.domain.repository.firstchoice;

import com.OriginLeague.mining.domain.model.firstchoice;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by 天禹 on 2017/12/22.
 */
public interface FirstRepository extends JpaRepository<firstchoice,String>{
    @Query(value = "select x from firstchoice x where x.PID=:pid and x.SID=:sid")
    firstchoice findfirstchoiceBySP(@Param("sid")String sid,@Param("pid") String PID);

    @Query(value = "select x from firstchoice  x where x.PID=:pid")
    Page<firstchoice> findfirstchoiceByPID(@Param("pid")String pid, Pageable pageable);

    @Query(value = "select x from firstchoice  x where x.SID=:sid")
    Page<firstchoice> findfirstchoiceBySID(@Param("sid")String pid, Pageable pageable);

//    @Query(value = "INSERT into iProjectX.first_choice(PID ,SID ,Logtime ) VALUE (:pid,:sid,:logtime);"nativeQuery = true)

}
