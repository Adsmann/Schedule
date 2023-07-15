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


    @GetMapping("/")
    public String listSubjects(Model model) {
        model.addAttribute("listSubjects", subjectService.listSubject());
        return "listSubjectM";
    }

    @GetMapping("/subjects/day/{date}")
    public String listSubjectsDay(@PathVariable LocalDate date, Model model) {
        model.addAttribute("listSubjects", subjectService.listSubject());
        model.addAttribute("date", date);
        return "subjectsDayM";
    }
    @GetMapping("/subjects/month/{month}")
    public String listSubjectsWeek(@PathVariable String month, Model model) {
        String[] arr = {"01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"};
        boolean contains = false;
        for (String i : arr) {
            if (i.equals(month)) {
                contains = true;
                break;
            }
        }

        if (contains) {
            model.addAttribute("listSubjects", subjectService.listSubject());
            model.addAttribute("month", month);
            return "subjectsMonth";
        } else {
            return "noFind";
        }

    }

    @GetMapping("/subject/{id}")
    public String infoSubject(@PathVariable Long id, @AuthenticationPrincipal User user, Model model) {
        Subject subject = subjectService.getSubjectByID(id);
        model.addAttribute("subject", subject);
        model.addAttribute("comments", subject.getComment());
        model.addAttribute("notes", subject.getNote());
        model.addAttribute("user", user);
        return "subjectM";
    }


}
