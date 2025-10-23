package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.model.HangHoa;
import com.example.demo.services.HangHoaService;
import com.example.demo.services.ProductDetailService;

@Controller
public class HomeController {
    @Autowired
    private HangHoaService hangHoaService;
    
    @Autowired
    private ProductDetailService productDetailService;
    
    @GetMapping("/")
    public String home(Model model) {
        // Sử dụng method mới để lấy giá từ cthanghoa
        model.addAttribute("latestProducts", hangHoaService.getLatestWithPrice(10));
        model.addAttribute("saleProducts", hangHoaService.getSaleWithPrice(8));
        return "home";
    }
    
    @GetMapping("/products")
    public String allProducts(Model model) {
        model.addAttribute("Products", hangHoaService.getAll());
        return "products";
    }
    
    @GetMapping("/product/{mahh}")
    public String productDetail(@PathVariable Integer mahh, Model model) {
        HangHoa product = hangHoaService.getById(mahh);
        if (product == null) {
            return "redirect:/";
        }
        
        model.addAttribute("product", product);
        model.addAttribute("variants", productDetailService.getProductVariants(mahh));
        return "chitietsanpham";
    }
}
