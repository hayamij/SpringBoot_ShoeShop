package com.example.demo.model;

import jakarta.persistence.*;

@Entity
@Table(name = "sizegiay")
public class SizeGiay {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Idsize")
    private Integer idsize;
    
    @Column(name = "size")
    private Integer size;

    // Getters and Setters
    public Integer getIdsize() {
        return idsize;
    }

    public void setIdsize(Integer idsize) {
        this.idsize = idsize;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }
}
