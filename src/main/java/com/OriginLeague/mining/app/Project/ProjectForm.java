package com.OriginLeague.mining.app.Project;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import java.io.Serializable;
import java.util.Date;

public class ProjectForm implements Serializable {
    /**
     * Validation group for create user
     */
    public static interface ProjectCreateGroup {
    }

    /**
     * Validation group for update user
     */
    public static interface ProjectUpdateGroup {
    }

    /**
     * Validation group for delete user
     */
    public static interface ProjectDeleteGroup {
    }

    /**
     * serial version uid.
     */
    private static final long serialVersionUID = 1L;

    @NotNull(groups = { ProjectUpdateGroup.class, ProjectDeleteGroup.class })
    private String pid;

    private String tid;

    private String mid;

    private String sid;

    private String name;

    private String description;

    private String type;

    private Date date;

    private int chosennum;

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getChosennum() {
        return chosennum;
    }

    public void setChosennum(int chosennum) {
        this.chosennum = chosennum;
    }



}
