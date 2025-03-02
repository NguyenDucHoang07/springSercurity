package com.example.demo.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ItemController {
    @GetMapping("/productDetail")
    public String getProductItem() {
        return "client/product/detail";
    }

    @GetMapping("/cart")
    public String getPageCart() {
        return "client/cart/cart";
    }
}
