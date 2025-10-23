package com.example.demo.model;

public class ProductVariantDTO {
    private Integer idmau;
    private String mausac;
    private Integer idsize;
    private Integer size;
    private Float dongia;
    private Integer soluongton;

    public ProductVariantDTO(Integer idmau, String mausac, Integer idsize, Integer size, Float dongia, Integer soluongton) {
        this.idmau = idmau;
        this.mausac = mausac;
        this.idsize = idsize;
        this.size = size;
        this.dongia = dongia;
        this.soluongton = soluongton;
    }

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

    public Float getDongia() {
        return dongia;
    }

    public void setDongia(Float dongia) {
        this.dongia = dongia;
    }

    public Integer getSoluongton() {
        return soluongton;
    }

    public void setSoluongton(Integer soluongton) {
        this.soluongton = soluongton;
    }
}
