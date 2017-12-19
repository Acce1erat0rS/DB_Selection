package com.OriginLeague.mining.app.student;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.*;
import java.io.Serializable;
import java.util.Date;

public class StudentForm implements Serializable {
    /**
     * Validation group for create student
     */
    public static interface StudentCreateGroup {
    }

    /**
     * Validation group for update student
     */
    public static interface StudentUpdateGroup {
    }

    /**
     * Validation group for delete student
     */
    public static interface StudentDeleteGroup {
    }

    /**
     * serial version uid.
     */
    private static final long serialVersionUID = 1L;

    @Null(groups = { StudentCreateGroup.class })
    @NotNull(groups = { StudentUpdateGroup.class, StudentDeleteGroup.class })
    @Min(0)
    String SID;

    public String getSID() {
        return SID;
    }

    public void setSID(String SID) {
        this.SID = SID;
    }
}
