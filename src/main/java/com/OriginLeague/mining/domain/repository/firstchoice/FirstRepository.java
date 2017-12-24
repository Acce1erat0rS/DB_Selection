package com.OriginLeague.mining.domain.repository.firstchoice;

import com.OriginLeague.mining.domain.model.firstchoice;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;

/**
 * Created by 天禹 on 2017/12/22.
 */
public interface FirstRepository extends JpaRepository<firstchoice,String> {
    @Query(value = "select x from firstchoice x where x.PID=:pid and x.SID=:sid")
    firstchoice findfirstchoiceBySP(@Param("sid") String sid, @Param("pid") String PID);

    @Query(value = "select x from firstchoice  x where x.PID=:pid")
    Page<firstchoice> findfirstchoiceByPID(@Param("pid") String pid, Pageable pageable);

    @Query(value = "select x from firstchoice  x where x.SID=:sid")
    Page<firstchoice> findfirstchoiceBySID(@Param("sid") String pid, Pageable pageable);

//    @Query(value = "INSERT into iProjectX.first_choice(PID ,SID ,Logtime ) VALUE (:pid,:sid,:logtime);"nativeQuery = true)

    @Modifying
    @Query(value = "insert into first_choice(SID ,PID ,Logtime ) values(?1,?2,?3)", nativeQuery = true)
    int addChoose(String sid, String pid, Date logtime);

    @Modifying
    @Query(value = "delete from first_choice where SID = ?1", nativeQuery = true)
    int finalChosebySID(String sid);

    @Modifying
    @Query(value = "delete from first_choice where PID = ?1", nativeQuery = true)
    int finalChosebyPID(String pid);

    @Query(value = "select x from firstchoice  x where x.PID=:pid")
    Page<firstchoice> findpjByPID(@Param("pid") String pid, Pageable pageable);
}
