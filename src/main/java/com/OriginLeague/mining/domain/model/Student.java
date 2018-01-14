package com.OriginLeague.mining.domain.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "Student")
public class Student {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "SID", unique = true, nullable = false)
    private String sid;

    @Column(name = "ID", unique = true, nullable = true)
    private String id;

    @Column(name = "PID", unique = false, nullable = true)
    private String pid;

    @Column(name = "MID", unique = false, nullable = true)
    private String mid;

    @Column(name = "Name", unique = false, nullable = true)
    private String name;

    @Column(name = "Email", unique = true, nullable = true)
    private String email;

    @Column(name = "Year", unique = false, nullable = true)
    private String year;

    @Column(name = "Age", unique = false, nullable = true)
    private String age;

    @Column(name = "Tel", unique = true, nullable = true)
    private String tel;

    @Column(name = "Class", unique = false, nullable = true)
    private String m_class;

    @Column(name = "Birthday", unique = false, nullable = true)
    private Date birthday;

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
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

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getM_class() {
        return m_class;
    }

    public void setM_class(String m_class) {
        this.m_class = m_class;
    }

    public Date getBirthday(){
        return birthday;
    }

    public void setBirthday(Date birthday){
        this.birthday=birthday;
    }
}
