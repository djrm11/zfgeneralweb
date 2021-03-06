package com.smart.domain;

import javax.persistence.*;

import java.sql.Timestamp;
import java.util.Date;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "t_user")
public class User extends BaseDomain {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    protected int userId;

    @Column(name = "user_name")
    protected String userName;

    protected String password;

    @Column(name = "last_visit")
    protected Timestamp lastVisit;

    @Column(name = "last_ip")
    protected String lastIp;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Timestamp getLastVisit() {
        return lastVisit;
    }

    public void setLastVisit(Timestamp lastVisit) {
        this.lastVisit = lastVisit;
    }

    public String getLastIp() {
        return lastIp;
    }

    public void setLastIp(String lastIp) {
        this.lastIp = lastIp;
    }



}