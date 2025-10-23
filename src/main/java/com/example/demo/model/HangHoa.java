package com.example.demo.model;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "hanghoa")
public class HangHoa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer mahh;
    private String tenhh;
    private Float giamgia;
    private String hinh;
    private Integer maloai;
    private Boolean dacbiet;
    private String mota;
    private LocalDate ngaylap;
    public Integer getMahh() {
        return mahh;
    }
    public void setMahh(Integer mahh) {
        this.mahh = mahh;
    }
    public String getTenhh() {
        return tenhh;
    }
    public void setTenhh(String tenhh) {
        this.tenhh = tenhh;
    }
    public Float getGiamgia() {
        return giamgia;
    }
    public void setGiamgia(Float giamgia) {
        this.giamgia = giamgia;
    }
    public String getHinh() {
        return hinh;
    }
    public void setHinh(String hinh) {
        this.hinh = hinh;
    }
    public Integer getMaloai() {
        return maloai;
    }
    public void setMaloai(Integer maloai) {
        this.maloai = maloai;
    }
    public Boolean getDacbiet() {
        return dacbiet;
    }
    public void setDacbiet(Boolean dacbiet) {
        this.dacbiet = dacbiet;
    }
    public String getMota() {
        return mota;
    }
    public void setMota(String mota) {
        this.mota = mota;
    }
    public LocalDate getNgaylap() {
        return ngaylap;
    }
    public void setNgaylap(LocalDate ngaylap) {
        this.ngaylap = ngaylap;
    }
}
