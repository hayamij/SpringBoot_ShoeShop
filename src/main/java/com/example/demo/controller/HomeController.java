package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.services.HangHoaService;

@Controller
public class HomeController {
    @Autowired
    private HangHoaService hangHoaService;
    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("latestProducts", hangHoaService.getLatest(10));
        model.addAttribute("saleProducts", hangHoaService.getSale(8));
        return "home";
    }
    @GetMapping("/products")
    public String allProducts(Model model) {
        model.addAttribute("Products", hangHoaService.getAll());
        return "products";
    }
}
