package com.example.Schedule.controllers;

import com.example.Schedule.models.Notification;
import com.example.Schedule.models.User;
import com.example.Schedule.services.NotificationService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class NotificationController {
    private final NotificationService notificationService;

    @PostMapping("/subject/{id}/notification/create")
    public String saveNote(Principal principal, Notification notification){
        notificationService.saveNotification(principal, notification);
        return"redirect:/subject/{id}";}

    @GetMapping("/notification")
    public String allNotification(@AuthenticationPrincipal User user, Model model) {
        model.addAttribute("listNotification", notificationService.listNotification());
        model.addAttribute("user", user);
        return "notificationM";
    }
}
