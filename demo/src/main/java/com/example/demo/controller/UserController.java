package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.security.crypto.password.PasswordEncoder;
// import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.domain.User;
import com.example.demo.service.UploadFileService;
// import com.example.demo.repository.UserRepository;
import com.example.demo.service.UserService;

import jakarta.validation.Valid;

@Controller
public class UserController {

    private final UserService userService;
    private final UploadFileService uploadFileService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService,
            UploadFileService uploadFileService,
            PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadFileService = uploadFileService;
        this.passwordEncoder = passwordEncoder;
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

    @PostMapping(value = "/admin/users/create")
    public String index(Model model, @ModelAttribute("newUser") @Valid User data, BindingResult newUserBindingResult,
            @RequestParam("File") MultipartFile file) {

        // if (bindingResult.hasErrors()) {
        List<FieldError> errors = newUserBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(error.getField() + " - " + error.getDefaultMessage());
        }
        if (newUserBindingResult.hasErrors()) {
            return "admin/user/create";
        }

        String avatar = this.uploadFileService.handleSaveUploadFile(file, "avatar");
        String hashPassword = this.passwordEncoder.encode(data.getPassWord());

        data.setAvatar(avatar);
        data.setPassWord(hashPassword);
        data.setRole(this.userService.getRoleByName(data.getRole().getName()));
        this.userService.handleUser(data);
        return "redirect:/table/user";
    }

    @GetMapping("/admin/user")
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
