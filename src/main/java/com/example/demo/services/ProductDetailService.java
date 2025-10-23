package com.example.demo.services;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.CTHangHoa;
import com.example.demo.model.MauSac;
import com.example.demo.model.ProductVariantDTO;
import com.example.demo.model.SizeGiay;
import com.example.demo.repository.CTHangHoaRepository;
import com.example.demo.repository.MauSacRepository;
import com.example.demo.repository.SizeGiayRepository;

@Service
public class ProductDetailService {
    
    @Autowired
    private CTHangHoaRepository ctHangHoaRepository;
    
    @Autowired
    private MauSacRepository mauSacRepository;
    
    @Autowired
    private SizeGiayRepository sizeGiayRepository;

    public List<ProductVariantDTO> getProductVariants(Integer mahh) {
        List<CTHangHoa> variants = ctHangHoaRepository.findByIdhanghoa(mahh);
        
        return variants.stream().map(ct -> {
            MauSac mauSac = mauSacRepository.findById(ct.getIdmau()).orElse(null);
            SizeGiay sizeGiay = sizeGiayRepository.findById(ct.getIdsize()).orElse(null);
            
            return new ProductVariantDTO(
                ct.getIdmau(),
                mauSac != null ? mauSac.getMausac() : "",
                ct.getIdsize(),
                sizeGiay != null ? sizeGiay.getSize() : 0,
                ct.getDongia(),
                ct.getSoluongton()
            );
        }).collect(Collectors.toList());
    }
}
