package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.domain.User;
// import com.example.demo.repository.UserRepository;
import com.example.demo.service.UserService;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getUser(Model model) {
        // List<Useru> users = new ArrayList<>();
        // users.add(new Useru("Nguyễn Đức Hoàng", 12));
        // users.add(new Useru("Nguyễn Hoàng Đức", 13));
        // users.add(new Useru("Hoàng", 10));
        // users.add(new Useru("fsdfsdfsd", 20));

        // model.addAttribute("UserList", users);
        String d = "hello";
        model.addAttribute("aa", d);
        return "hello";
    }

    @GetMapping("/user/email")
    public String index() {
        List<User> dataUser = this.userService.getAllUserByEmail("dfgfđfrgdg@gmail.com");
        System.out.println(dataUser);
        return "index";
    }

    @RequestMapping(value = "/admin/users/create", method = RequestMethod.POST)
    public String index(Model model, @ModelAttribute("newUser") User data) {
        System.out.println(data);
        this.userService.handleUser(data);
        return "redirect:/table/user";
    }

    // @RequestMapping("/table/user")
    // public String tableUser() {

    // return "admin/user/tableUser";
    // }

    @RequestMapping("/admin/user")
    public String indexUser(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping("/table/user")
    public String getAllUse(Model model) {
        List<User> dataUsser = this.userService.getAllUser();
        model.addAttribute("dataUsser", dataUsser);
        return "admin/user/tableUser";
    }

    @RequestMapping("/user/detail/{id}")
    public String getUserDetailPage(Model model, @PathVariable Long id) {
        User data = this.userService.getUserById(id);
        model.addAttribute("user", data);
        model.addAttribute("id", id);
        return "admin/user/UserDetail";

    }

    @RequestMapping("admin/user/update/{id}")
    public String getPageUserUpdate(Model model, User dataUser) {

        User data = this.userService.getUserById(dataUser.getId());
        model.addAttribute("newUser", data);
        return "admin/user/updateUser";
    }

    @PostMapping("admin/user/update")
    public String UserUpdate(Model model, @ModelAttribute("newUser") User dataUser) {

        User dataUserId = this.userService.getUserById(dataUser.getId());
        if (dataUserId != null) {
            dataUserId.setFullName(dataUser.getFullName());
            dataUserId.setPhoneNumber(dataUser.getPhoneNumber());
            dataUserId.setAddress(dataUser.getAddress());

            this.userService.handleUser(dataUserId);
            // System.out.println("édjfhyjskdhfskdj");
        }
        return "redirect:/table/user";
    }

    @RequestMapping("admin/user/delete/{id}")
    public String getPageDelete(Model model, @PathVariable Long id) {

        model.addAttribute("id", id);
        User user = new User();
        user.setId(id);
        model.addAttribute("newUser", user);
        return "admin/user/deleteUser";
    }

    @PostMapping("admin/user/delete")
    public String postDeleteUser(Model model, @ModelAttribute("newUser") User datadelete) {
        System.out.println("àhjasdfhsdkfhds");
        this.userService.deleUserById(datadelete.getId());
        return "redirect:/table/user";

    }
}
