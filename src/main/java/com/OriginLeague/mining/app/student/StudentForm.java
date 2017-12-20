package com.OriginLeague.mining.app.student;

import com.OriginLeague.mining.domain.model.Student;
import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.*;
import java.io.Serializable;
import java.util.Date;

public class StudentForm implements Serializable {
    /**
     * Validation group for create student
     */
    public static interface StudentCreateGroup {
    }

    /**
     * Validation group for update student
     */
    public static interface StudentUpdateGroup {
    }

    /**
     * Validation group for delete student
     */
    public static interface StudentDeleteGroup {
    }

    /**
     * serial version uid.
     */
    private static final long serialVersionUID = 1L;

    @Null(groups = { StudentCreateGroup.class })
    @NotNull(groups = { StudentUpdateGroup.class, StudentDeleteGroup.class })
    private String SID="";

    @Null(groups = {StudentDeleteGroup.class })
    @NotNull(groups = {StudentUpdateGroup.class,StudentCreateGroup.class })
    @Size(min = 1, max = 20)
    private String name="";

    @Null(groups = { StudentDeleteGroup.class })
    @NotNull(groups = { StudentUpdateGroup.class, StudentCreateGroup.class })
    @Size(min = 1, max = 50)
    @Email
    private String email="";

    @Null(groups = { StudentDeleteGroup.class })
    @NotNull(groups = { StudentUpdateGroup.class, StudentCreateGroup.class })
    @Past
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday=null;

    @Null(groups = {StudentDeleteGroup.class})
    @NotNull(groups = {StudentUpdateGroup.class,StudentCreateGroup.class })
    private String tel="";

    @Null(groups = {StudentDeleteGroup.class})
    @NotNull(groups = {StudentUpdateGroup.class,StudentCreateGroup.class })
    private String my_class="";

    public String getSID() {
        return SID;
    }

    public void setSID(String SID) {
        this.SID = SID;
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

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getMy_class() {
        return my_class;
    }

    public void setMy_class(String my_class) {
        this.my_class = my_class;
    }
}
