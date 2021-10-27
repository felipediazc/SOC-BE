package com.bringglobal.soc.db.entity;

import javax.persistence.*;

@Entity
@Table(name = "soc_workersrange")
public class WorkersRange {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    private String name;

    public WorkersRange() {

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

    public WorkersRange(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "WorkersRange{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
