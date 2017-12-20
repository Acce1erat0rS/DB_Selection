package com.OriginLeague.mining.app.teacher;

import com.OriginLeague.mining.domain.model.Teacher;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Size;
import java.io.Serializable;
import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;


public class TeacherForm implements Serializable {
    /**
     * Validation group for create student
     */
    public static interface TeacherCreateGroup {
    }

    /**
     * Validation group for update student
     */
    public static interface TeacherUpdateGroup {
    }

    /**
     * Validation group for delete student
     */
    public static interface TeacherDeleteGroup {
    }

    /**
     * serial version uid.
     */
    private static final long serialVersionUID = 1L;

    @Null(groups = {TeacherCreateGroup.class })
    @NotNull(groups = { TeacherUpdateGroup.class, TeacherDeleteGroup.class })
    @Min(0)
    String tid="";

    @Null(groups = {TeacherDeleteGroup.class })
    @NotNull(groups = {TeacherUpdateGroup.class,TeacherCreateGroup.class })
    @Size(min = 1, max = 20)
    private String name="";

    @Null(groups = { TeacherDeleteGroup.class })
    @NotNull(groups = { TeacherUpdateGroup.class, TeacherCreateGroup.class })
    @Size(min = 1, max = 50)
    @Email
    private String email="";

    @Null(groups = {TeacherDeleteGroup.class })
    @NotNull(groups = {TeacherUpdateGroup.class,TeacherCreateGroup.class })
    @Size(min = 1, max = 15)
    private String tel="";

    @Null(groups = {TeacherCreateGroup.class })
    @NotNull(groups = { TeacherUpdateGroup.class, TeacherDeleteGroup.class })
    private String profession="";

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }
}
