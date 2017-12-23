package com.OriginLeague.mining.domain.model;

/**
 * Created by 天禹 on 2017/12/20.
 */

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Version;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "project" )
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class Project implements Serializable {

    /**
     * serial version id.
     */
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    @Column(name = "PID", unique = true, nullable = false,length = 32)
    private String pid;

    @Column(name = "TID",unique = false, nullable = true)
    private String tid;

    @Column(name = "MID",unique = false, nullable = true)
    private String mid;

    @Column(name = "SID",unique = false, nullable = true)
    private String sid;

    @Column(name = "Name",unique = false, nullable = true)
    private String name;

    @Column(name = "Type",unique = false, nullable = true)
    private String type;

    @Column(name = "Date", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;

    @Column(name = "Chosennum", nullable = false)
    private Integer chosennum;

    @Column(name = "Description",unique = false, nullable = true)
    private String description;

    public String getPid() {
        return pid;
    }

    public Integer getChosennum() {
        return chosennum;
    }

    public void setChosennum(Integer chosennum) {
        this.chosennum = chosennum;
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

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this,
                ToStringStyle.SHORT_PREFIX_STYLE);
    }
}
