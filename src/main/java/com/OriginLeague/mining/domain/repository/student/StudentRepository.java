package com.OriginLeague.mining.domain.repository.student;

import com.OriginLeague.mining.domain.model.Student;
import com.OriginLeague.mining.domain.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;

public interface StudentRepository extends JpaRepository<Student, String> {
    @Query(value = "SELECT x FROM Student x WHERE x.name LIKE :name% ORDER BY x.id", countQuery = "SELECT COUNT(x) FROM Student x WHERE x.name LIKE :name%")
    Page<Student> findByNameLike(@Param("name") String name, Pageable page);

    @Modifying
    @Query(value = "update student set PID=?1 where SID=?2", nativeQuery = true)
    void finalize(String pid, String sid);

    @Modifying
    @Query(value="INSERT INTO `iProjectX`.`student` " +
            "(`SID`, `PID`,`MID`, `Name`, `Email`,`Year`,`Age`,`Tel`,`Class`,`Birthday`) " +
            "VALUES (?1, ?2, ?3,?4, ?5, ?6,?7,?8,?9,?10)", nativeQuery = true)
    void NewSave(String Sid,String Pid,String Mid,String Name,String Email,String Year,String Age,
                 String Tel,String Clas,Date Birthday);

    @Modifying
    @Query(value = "update student set ID=?1 where SID=?1", nativeQuery = true)
    void updateinID(String id);
}
