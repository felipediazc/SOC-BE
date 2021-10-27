package com.bringglobal.soc.db.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "soc_users")
public class Users {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    private String name;
    private String email;
    private Date creationdate;
    private String password;

    @Transient
    private String passwordverify;

    private Long hearaboutusid;
    private String other;
    private Long workersid;
    private Long anualinvoiceid;
    private Long currencyid;
    private Long industryid;
    private Long regionid;
    private Integer walkthrough;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Users() {
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreationdate() {
        return creationdate;
    }

    public void setCreationdate(Date creationdate) {
        this.creationdate = creationdate;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    public Long getWorkersid() {
        return workersid;
    }

    public void setWorkersid(Long workersid) {
        this.workersid = workersid;
    }

    public Long getAnualinvoiceid() {
        return anualinvoiceid;
    }

    public void setAnualinvoiceid(Long anualinvoiceid) {
        this.anualinvoiceid = anualinvoiceid;
    }

    public Long getCurrencyid() {
        return currencyid;
    }

    public void setCurrencyid(Long currencyid) {
        this.currencyid = currencyid;
    }

    public Long getIndustryid() {
        return industryid;
    }

    public void setIndustryid(Long industryid) {
        this.industryid = industryid;
    }

    public Long getRegionid() {
        return regionid;
    }

    public void setRegionid(Long regionid) {
        this.regionid = regionid;
    }

    public Integer getWalkthrough() {
        return walkthrough;
    }

    public void setWalkthrough(Integer walkthrough) {
        this.walkthrough = walkthrough;
    }

    public Long getHearaboutusid() {
        return hearaboutusid;
    }

    public void setHearaboutusid(Long hearaboutusid) {
        this.hearaboutusid = hearaboutusid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswordverify() {
        return passwordverify;
    }

    public void setPasswordverify(String passwordverify) {
        this.passwordverify = passwordverify;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", creationdate=" + creationdate +
                ", password='" + password + '\'' +
                ", hearaboutusid=" + hearaboutusid +
                ", other='" + other + '\'' +
                ", workersid=" + workersid +
                ", anualinvoiceid=" + anualinvoiceid +
                ", currencyid=" + currencyid +
                ", industryid=" + industryid +
                ", regionid=" + regionid +
                ", walkthrough=" + walkthrough +
                '}';
    }
}
