package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.domain.Product;

@Controller
public class ProductController {
    @GetMapping("/admin/product")
    public String getProduct() {
        return "admin/product/show";
    }

    @GetMapping("admin/create/product")
    public String getPageCreateProduct(Model model) {
        model.addAttribute("newProduct", new Product());
        return "admin/product/create";
    }

}
