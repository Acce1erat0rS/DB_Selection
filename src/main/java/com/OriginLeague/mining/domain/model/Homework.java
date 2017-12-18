package com.OriginLeague.mining.domain.model;

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

@Entity
@Table(name = "T_HOMEWORK")

public class Homework implements Serializable{
	 /**
     * serial version id.
     */
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue
    @Column(name = "HOMEWORK_ID", unique = true, nullable = false)
    private Integer id;

    @Column(name = "HOMEWORK_CHAPTER", nullable = false)
    private String chapter;

    @Column(name = "HOMEWORK_CONTENT", nullable = false)
    private String content;

    @Column(name = "HOMEWORK_STARTTIME", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date startTime;

    @Column(name = "HOMEWORK_DEADLINE", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date deadline;
    
    @Column(name = "HOMEWORK_UPDATETIME", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updateTime;
    
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChapter() {
        return chapter;
    }

    public void setChapter(String chapter) {
        this.chapter = chapter;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }
    
    public Date getUpadteTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this,
                ToStringStyle.SHORT_PREFIX_STYLE);
    }

}
