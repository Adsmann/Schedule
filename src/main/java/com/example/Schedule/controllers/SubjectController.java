package com.example.Schedule.controllers;


import com.example.Schedule.repositories.SubjectRepository;
import com.example.Schedule.services.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.text.AttributedString;

@Controller
@RequiredArgsConstructor
public class SubjectController {
    private final SubjectService subjectService;

    @GetMapping("/subjects")
    public String createSubject(Model model) {
        model.addAttribute("listSubjects", subjectService.listSubject());
        return "listSubject";
    }


}
