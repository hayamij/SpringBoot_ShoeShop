package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.demo.model.HangHoa;
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
}
