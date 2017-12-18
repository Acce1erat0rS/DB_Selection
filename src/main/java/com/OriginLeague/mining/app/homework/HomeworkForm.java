package com.OriginLeague.mining.app.homework;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

public class HomeworkForm implements Serializable {
	 /**
     * Validation group for create homework
     */
    public static interface HomeworkCreateGroup {
    }

    /**
     * Validation group for update homework
     */
    public static interface HomeworkUpdateGroup {
    }

    /**
     * Validation group for delete homework
     */
    public static interface HomeworkDeleteGroup {
    }

    /**
     * serial version uid.
     */
    private static final long serialVersionUID = 1L;

    @Null(groups = { HomeworkCreateGroup.class })
    @NotNull(groups = { HomeworkUpdateGroup.class, HomeworkDeleteGroup.class })
    @Min(0)
    private Integer id;

    @Null(groups = { HomeworkDeleteGroup.class })
    @NotNull(groups = { HomeworkUpdateGroup.class, HomeworkCreateGroup.class })
    @Size(min = 1, max = 20)
    private String chapter;

    @Null(groups = { HomeworkDeleteGroup.class })
    @NotNull(groups = { HomeworkUpdateGroup.class, HomeworkCreateGroup.class })
    @Size(min = 1, max = 100)
    private String content;

    @Null(groups = { HomeworkDeleteGroup.class })
    @NotNull(groups = { HomeworkUpdateGroup.class, HomeworkCreateGroup.class })
    @Past
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date deadline;

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

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }
   
}
