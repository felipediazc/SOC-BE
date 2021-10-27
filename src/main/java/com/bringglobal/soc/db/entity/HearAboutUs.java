package com.bringglobal.soc.db.entity;

import javax.persistence.*;

@Entity
@Table(name = "soc_hearaboutus")
public class HearAboutUs {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    private String name;

    public HearAboutUs() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public HearAboutUs(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "HearAboutUs{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
