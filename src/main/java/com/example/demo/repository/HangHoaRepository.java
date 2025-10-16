package com.example.demo.repository;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.demo.model.HangHoa;

@Repository
public interface HangHoaRepository extends JpaRepository<HangHoa, Integer> {
    @Query("SELECT h FROM HangHoa h ORDER BY h.mahh DESC")
    List<HangHoa> findLatest(Pageable pageable);

    @Query("SELECT h FROM HangHoa h WHERE h.giamgia > 0 ORDER BY h.giamgia DESC")
    List<HangHoa> findSale(Pageable pageable);

}
