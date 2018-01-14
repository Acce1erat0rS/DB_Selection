package com.OriginLeague.mining.domain.repository.teacher;

import com.OriginLeague.mining.domain.model.Teacher;
import com.OriginLeague.mining.domain.model.User;
import org.hibernate.annotations.NamedNativeQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query.*;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface TeacherRepository extends JpaRepository<Teacher, String> {
    @Query(value = "SELECT x FROM Teacher x WHERE x.name LIKE :name% ORDER BY x.id", countQuery = "SELECT COUNT(x) FROM Teacher x WHERE x.name LIKE :name%")
    Page<Teacher> findByNameLike(@Param("name") String name, Pageable page);

    @Modifying
    @Query(value = "update teacher set ID=?1 where TID=?1", nativeQuery = true)
    void updateinID(String id);

    @Modifying
    @Query(value="INSERT INTO `iProjectX`.`teacher` " +
            "(`TID`, `MID`, `Name`, `Profession`, `Email`, `Tel`) " +
            "VALUES (?1, ?2, ?3,?4, ?5, ?6)", nativeQuery = true)
    void NewSave(String TID,String Mid,String Name,String Profession,String Email,String Tel);
}
