package com.example.Schedule.controllers;


import com.example.Schedule.models.Subject;
import com.example.Schedule.models.User;
import com.example.Schedule.services.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.time.LocalDate;



@Controller
@RequiredArgsConstructor
public class SubjectController {
    private final SubjectService subjectService;


    @GetMapping("/subjects")
    public String listSubjects(Model model) {
        model.addAttribute("listSubjects", subjectService.listSubject());
        return "listSubject";
    }

    @GetMapping("/subjects/day/{date}")
    public String listSubjectsDay(@PathVariable LocalDate date, Model model) {
        model.addAttribute("listSubjects", subjectService.listSubject());
        model.addAttribute("listSubjects", date);
        return "subjectsDay";
    }

    @GetMapping("/subject/{id}")
    public String infoSubject(@PathVariable Long id, @AuthenticationPrincipal User user, Model model) {
        Subject subject = subjectService.getSubjectByID(id);
        model.addAttribute("subject", subject);
        model.addAttribute("comments", subject.getComment());
        model.addAttribute("notes", subject.getNote());
        model.addAttribute("user", user);
        return "subject";
    }


}
