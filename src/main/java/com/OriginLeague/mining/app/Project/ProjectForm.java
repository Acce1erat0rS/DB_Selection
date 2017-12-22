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

    @Null(groups = { ProjectCreateGroup.class })
    @NotNull(groups = { ProjectUpdateGroup.class, ProjectDeleteGroup.class })
    @Min(0)
    private String pid;

    // 重难点摘要
    @Null(groups = { ProjectDeleteGroup.class })
    @NotNull(groups = { ProjectUpdateGroup.class, ProjectCreateGroup.class })
    private String name;

    @NotNull(groups = { ProjectUpdateGroup.class, ProjectDeleteGroup.class })
    private String description;

    @NotNull(groups = { ProjectUpdateGroup.class, ProjectDeleteGroup.class })
    private String type;

    private Date createdAt;

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

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
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

}
