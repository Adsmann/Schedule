package com.example.Schedule.controllers;


import com.example.Schedule.models.Subject;
import com.example.Schedule.models.UseHelp;
import com.example.Schedule.models.User;
import com.example.Schedule.repositories.UseHelpRepository;
import com.example.Schedule.repositories.UserRepository;
import com.example.Schedule.services.SubjectService;
import com.example.Schedule.services.UseHelpService;
import com.example.Schedule.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final SubjectService subjectService;
    private final UserRepository userRepository;
    private final UseHelpService useHelpService;
    private final UseHelpRepository useHelpRepository;

    @GetMapping("/login")
    public String login() {
        return "desktop-1";
    }

    @GetMapping("/registration")
    public String registration() {
        return "desktop-2";
    }

    @PostMapping("/registration")
    public String createUser(User user) {
        userService.createUser(user);
        return "redirect:/login";
    }

    @GetMapping("/office")
    public String office(@AuthenticationPrincipal User user, Model model) {
        model.addAttribute("useHelpList", useHelpService.listUseHelp());
        model.addAttribute("user", user);
        model.addAttribute("listSubjects", subjectService.listSubject());
        return "desktop-pol";
    }

    @PostMapping("/office/settings/{id}")
    public String updateData(@PathVariable Long id, @RequestParam String clas, Model model) {
        UseHelp useHelp = useHelpRepository.findUseHelpById(id);
        useHelp.setClas(clas);
        useHelpRepository.save(useHelp);
        model.addAttribute("idMain", id);
        return "redirect:/office";
    }

}



