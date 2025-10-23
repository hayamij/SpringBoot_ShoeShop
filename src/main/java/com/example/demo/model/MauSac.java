package com.example.demo.model;

import jakarta.persistence.*;

@Entity
@Table(name = "mausac")
public class MauSac {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Idmau")
    private Integer idmau;
    
    @Column(name = "mausac")
    private String mausac;

    // Getters and Setters
    public Integer getIdmau() {
        return idmau;
    }

    public void setIdmau(Integer idmau) {
        this.idmau = idmau;
    }

    public String getMausac() {
        return mausac;
    }

    public void setMausac(String mausac) {
        this.mausac = mausac;
    }
}
