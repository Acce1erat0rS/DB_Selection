package com.OriginLeague.mining.app.KeyPoint;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.*;
import java.io.Serializable;
import java.util.Date;

public class KeyPointForm implements Serializable {
    /**
     * Validation group for create user
     */
    public static interface KeyPointCreateGroup {
    }

    /**
     * Validation group for update user
     */
    public static interface KeyPointUpdateGroup {
    }

    /**
     * Validation group for delete user
     */
    public static interface KeyPointDeleteGroup {
    }

    /**
     * serial version uid.
     */
    private static final long serialVersionUID = 1L;

    @Null(groups = { KeyPointCreateGroup.class })
    @NotNull(groups = { KeyPointUpdateGroup.class, KeyPointDeleteGroup.class })
    @Min(0)
    private Integer id;

    // 重难点摘要
    @Null(groups = { KeyPointDeleteGroup.class })
    @NotNull(groups = { KeyPointUpdateGroup.class, KeyPointCreateGroup.class })
    private String name;

    @NotNull(groups = { KeyPointUpdateGroup.class, KeyPointDeleteGroup.class })
    private String description;



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
