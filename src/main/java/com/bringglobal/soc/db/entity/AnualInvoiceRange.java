package com.bringglobal.soc.db.entity;

import javax.persistence.*;

@Entity
@Table(name = "soc_anualinvoicerange")
public class AnualInvoiceRange {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    private String name;

    public AnualInvoiceRange() {

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

    public AnualInvoiceRange(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "AnualInvoiceRange{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
