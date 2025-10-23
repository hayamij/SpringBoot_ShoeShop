package com.example.demo.services;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.demo.model.HangHoa;
import com.example.demo.model.HangHoaWithPrice;
import com.example.demo.repository.HangHoaRepository;

@Service
public class HangHoaService {
    @Autowired
    private HangHoaRepository repo;

    public List<HangHoa> getLatest(int limit) {
        return repo.findLatest(Pageable.ofSize(limit));
    }

    public List<HangHoa> getSale(int limit) {
        return repo.findSale(Pageable.ofSize(limit));
    }

    public List<HangHoa> getAll() {
        return repo.findAll();
    }

    public HangHoa getById(Integer mahh) {
        return repo.findById(mahh).orElse(null);
    }

    // Lấy sản phẩm mới nhất với giá từ cthanghoa
    public List<HangHoaWithPrice> getLatestWithPrice(int limit) {
        List<Object[]> results = repo.findLatestWithPrice(limit);
        return results.stream()
            .map(row -> new HangHoaWithPrice(
                (Integer) row[0],  // mahh
                (String) row[1],   // tenhh
                (String) row[2],   // hinh
                ((Number) row[3]).floatValue()  // dongia
            ))
            .collect(Collectors.toList());
    }

    // Lấy sản phẩm khuyến mãi với giá từ cthanghoa
    public List<HangHoaWithPrice> getSaleWithPrice(int limit) {
        List<Object[]> results = repo.findSaleWithPrice(limit);
        return results.stream()
            .map(row -> new HangHoaWithPrice(
                (Integer) row[0],  // mahh
                (String) row[1],   // tenhh
                (String) row[2],   // hinh
                ((Number) row[3]).floatValue()  // dongia
            ))
            .collect(Collectors.toList());
    }
}
