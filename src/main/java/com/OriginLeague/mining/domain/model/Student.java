package com.OriginLeague.mining.domain.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Student")
public class Student {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "SID", unique = true, nullable = false)
    private String SID;

    @Column(name = "ID", unique = true, nullable = true)
    private String ID;

    @Column(name = "PID", unique = false, nullable = true)
    private String PID;

    @Column(name = "MID", unique = false, nullable = true)
    private String MID;

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

    public String getSID() {
        return SID;
    }

    public void setSID(String SID) {
        this.SID = SID;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getPID() {
        return PID;
    }

    public void setPID(String PID) {
        this.PID = PID;
    }

    public String getMID() {
        return MID;
    }

    public void setMID(String MID) {
        this.MID = MID;
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
}
