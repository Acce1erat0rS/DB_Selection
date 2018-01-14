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

    @NotNull(groups = { StudentUpdateGroup.class, StudentDeleteGroup.class })
    private String sid="";

    private String pid;

    private String mid;

    private String name;

    @Email
    private String email;

    @Past
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday=null;

    private String year=null;


    private String age=null;


    private String tel;


    private String my_class;

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
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

    public String getPid() {
        return pid;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }


    public void setPid(String pid){
        this.pid=pid;
    }

}
