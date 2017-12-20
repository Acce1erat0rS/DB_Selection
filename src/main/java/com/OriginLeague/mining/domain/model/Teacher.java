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
    private String TID;

    @Column(name = "ID", unique = true, nullable = true)
    private String id;

    @Column(name = "MID", unique = true, nullable = true)
    private String Mid;

    @Column(name = "Name", unique = true, nullable = true)
    private String name;

    @Column(name = "Profession", unique = true, nullable = true)
    private String profession;

    @Column(name = "Email", unique = true, nullable = true)
    private String email;

    @Column(name = "Tel", unique = true, nullable = true)
    private String tel;

    public String getTID() {
        return TID;
    }

    public void setTID(String TID) {
        this.TID = TID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMid() {
        return Mid;
    }

    public void setMid(String mid) {
        Mid = mid;
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
