package com.example.demo.model;

import java.io.Serializable;
import jakarta.persistence.*;

@Entity
@Table(name = "cthanghoa")
@IdClass(CTHangHoa.CTHangHoaId.class)
public class CTHangHoa {
    
    @Id
    @Column(name = "idhanghoa")
    private Integer idhanghoa;
    
    @Id
    @Column(name = "idmau")
    private Integer idmau;
    
    @Id
    @Column(name = "idsize")
    private Integer idsize;
    
    @Column(name = "dongia")
    private Float dongia;
    
    @Column(name = "soluongton")
    private Integer soluongton;

    // Getters and Setters
    public Integer getIdhanghoa() {
        return idhanghoa;
    }

    public void setIdhanghoa(Integer idhanghoa) {
        this.idhanghoa = idhanghoa;
    }

    public Integer getIdmau() {
        return idmau;
    }

    public void setIdmau(Integer idmau) {
        this.idmau = idmau;
    }

    public Integer getIdsize() {
        return idsize;
    }

    public void setIdsize(Integer idsize) {
        this.idsize = idsize;
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

    // Composite Key Class
    public static class CTHangHoaId implements Serializable {
        private Integer idhanghoa;
        private Integer idmau;
        private Integer idsize;

        public CTHangHoaId() {}

        public CTHangHoaId(Integer idhanghoa, Integer idmau, Integer idsize) {
            this.idhanghoa = idhanghoa;
            this.idmau = idmau;
            this.idsize = idsize;
        }

        // Getters, Setters, equals, hashCode
        public Integer getIdhanghoa() {
            return idhanghoa;
        }

        public void setIdhanghoa(Integer idhanghoa) {
            this.idhanghoa = idhanghoa;
        }

        public Integer getIdmau() {
            return idmau;
        }

        public void setIdmau(Integer idmau) {
            this.idmau = idmau;
        }

        public Integer getIdsize() {
            return idsize;
        }

        public void setIdsize(Integer idsize) {
            this.idsize = idsize;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            CTHangHoaId that = (CTHangHoaId) o;
            return idhanghoa.equals(that.idhanghoa) &&
                   idmau.equals(that.idmau) &&
                   idsize.equals(that.idsize);
        }

        @Override
        public int hashCode() {
            return idhanghoa.hashCode() + idmau.hashCode() + idsize.hashCode();
        }
    }
}
