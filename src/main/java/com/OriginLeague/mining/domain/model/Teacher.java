package com.OriginLeague.mining.domain.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Teacher")
public class Teacher {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "TID", unique = true, nullable = false)
    private String tid;

    @Column(name = "ID", unique = true, nullable = true)
    private String id;

    @Column(name = "MID", unique = false, nullable = true)
    private String mid;

    @Column(name = "Name", unique = false, nullable = true)
    private String name;

    @Column(name = "Profession", unique = false, nullable = true)
    private String profession;

    @Column(name = "Email", unique = true, nullable = true)
    private String email;

    @Column(name = "Tel", unique = true, nullable = true)
    private String tel;



    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
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

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
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
}
