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

    // Query để lấy giá từ bảng cthanghoa
    @Query(value = "SELECT TOP (?1) h.mahh, h.tenhh, h.hinh, MIN(ct.dongia) as dongia " +
                   "FROM hanghoa h " +
                   "INNER JOIN cthanghoa ct ON h.mahh = ct.idhanghoa " +
                   "GROUP BY h.mahh, h.tenhh, h.hinh " +
                   "ORDER BY h.mahh DESC", 
           nativeQuery = true)
    List<Object[]> findLatestWithPrice(int limit);

    @Query(value = "SELECT TOP (?1) h.mahh, h.tenhh, h.hinh, MIN(ct.dongia) as dongia " +
                   "FROM hanghoa h " +
                   "INNER JOIN cthanghoa ct ON h.mahh = ct.idhanghoa " +
                   "WHERE h.giamgia > 0 " +
                   "GROUP BY h.mahh, h.tenhh, h.hinh, h.giamgia " +
                   "ORDER BY h.giamgia DESC", 
           nativeQuery = true)
    List<Object[]> findSaleWithPrice(int limit);

}
