package com.OriginLeague.mining.app.homework;

import java.io.Serializable;

import javax.validation.constraints.Size;

import javax.validation.constraints.NotNull;

public class HomeworkSearchForm implements Serializable {

    /**
     * serial version uid.
     */
    private static final long serialVersionUID = 1L;

    @NotNull
    @Size(min = 0)
    private String chapter;

    public String getChapter() {
        return chapter;
    }

    public void setChapter(String chapter) {
        this.chapter = chapter;
    }

}
