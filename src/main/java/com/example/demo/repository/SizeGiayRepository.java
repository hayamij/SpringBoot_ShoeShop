package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.demo.model.SizeGiay;

@Repository
public interface SizeGiayRepository extends JpaRepository<SizeGiay, Integer> {
}
