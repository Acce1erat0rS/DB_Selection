//package com.OriginLeague.mining.domain.model;
//
//import javax.persistence.*;
//import java.util.Date;
//
///**
// * Created by 天禹 on 2017/12/22.
// */
//
//@Entity
//@Table(name = "first_choice")
//public class firstchoice {
//    @Id
//    @Column(name = "PID", unique = false, nullable = false)
//    private String PID;
//
//    @Column(name = "SID", unique = false, nullable = false)
//    private String SID;
//
//    @Column(name = "Logtime")
//    @Temporal(TemporalType.DATE)
//    private Date logtime;
//
//    public String getPID() {
//        return PID;
//    }
//
//    public void setPID(String PID) {
//        this.PID = PID;
//    }
//
//    public String getSID() {
//        return SID;
//    }
//
//    public void setSID(String SID) {
//        this.SID = SID;
//    }
//
//    public Date getLogtime() {
//        return logtime;
//    }
//
//    public void setLogtime(Date logtime) {
//        this.logtime = logtime;
//    }
//}
