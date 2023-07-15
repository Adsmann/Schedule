package com.example.Schedule.controllers;


import com.example.Schedule.models.User;
import com.example.Schedule.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login")
    public String login() {
        return "loginM";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registrationM";
    }

    @PostMapping("/registration")
    public String createUser(User user) {
        userService.createUser(user);
        return "redirect:/login";
    }

}



