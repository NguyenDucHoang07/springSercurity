package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.Useru;
import com.example.demo.service.UserService;

@Controller
public class UserController {
    private UserService userService;
    private Useru user;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    // @RequestMapping("/hello")
    // public String getHomePage(Model model) {
    // String test = this.userService.handleHello();
    // model.addAttribute("eric", test);
    // return "hello";
    // }
    @GetMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/User")
    public String getUser(Model model) {
        List<Useru> users = new ArrayList<>();
        users.add(new Useru("Nguyễn Đức Hoàng", 12));
        users.add(new Useru("Nguyễn Hoàng Đức", 13));
        users.add(new Useru("Hoàng", 10));
        users.add(new Useru("fsdfsdfsd", 20));

        model.addAttribute("UserList", users);
        return "hello";
    }
}
