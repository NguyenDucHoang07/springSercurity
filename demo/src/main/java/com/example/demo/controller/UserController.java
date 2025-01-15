package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.domain.User;

@Controller
public class UserController {

    // @GetMapping("/")
    // public String index() {
    // return "index";
    // }

    // @RequestMapping("/admin/users/Userssss")
    // public String getUser(Model model) {
    // List<Useru> users = new ArrayList<>();
    // users.add(new Useru("Nguyễn Đức Hoàng", 12));
    // users.add(new Useru("Nguyễn Hoàng Đức", 13));
    // users.add(new Useru("Hoàng", 10));
    // users.add(new Useru("fsdfsdfsd", 20));

    // model.addAttribute("UserList", users);
    // return "hello";
    // }

    @RequestMapping(value = "/admin/users/create", method = RequestMethod.POST)
    public String index(Model model, @ModelAttribute("newUser") User data) {
        System.out.println(data);
        return "index";
    }

    @RequestMapping("/admin/user")
    public String indexUser(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }
}
