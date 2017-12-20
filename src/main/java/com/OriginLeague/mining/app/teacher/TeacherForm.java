package com.OriginLeague.mining.app.teacher;

import com.OriginLeague.mining.domain.model.Teacher;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import java.io.Serializable;

public class TeacherForm implements Serializable {
    /**
     * Validation group for create student
     */
    public static interface TeacherCreateGroup {
    }

    /**
     * Validation group for update student
     */
    public static interface TeacherUpdateGroup {
    }

    /**
     * Validation group for delete student
     */
    public static interface TeacherDeleteGroup {
    }

    /**
     * serial version uid.
     */
    private static final long serialVersionUID = 1L;

    @Null(groups = {TeacherCreateGroup.class })
    @NotNull(groups = { TeacherUpdateGroup.class, TeacherDeleteGroup.class })
    @Min(0)
    String TID;

    public String getTID() {
        return TID;
    }

    public void setTID(String TID) {
        this.TID = TID;
    }
}
