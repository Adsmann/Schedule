package com.example.Schedule.controllers;

import com.example.Schedule.models.Subject;
import com.example.Schedule.repositories.SubjectRepository;
import com.example.Schedule.services.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;

@Controller
@RequiredArgsConstructor
public class SettingsSubjectController {
    private final SubjectService subjectService;
    private final SubjectRepository subjectRepository;
    @GetMapping("/create/subject")
    public String createSubject() {
        return "createSubject";
    }

    @PostMapping("/create/subject/create")
    public String saveSubject(Subject subject){
        subjectService.saveSubject(subject);
        return"redirect:/create/subject";}

    @GetMapping("/subject/settings/{id}")
    public String startPage(@PathVariable Long id,Model model){
        Subject subject = subjectRepository.findUserById(id);
        model.addAttribute("mainSubject", subject);
        model.addAttribute("idMain", id);
        return "settingsSubject";
    }
    @PostMapping("/subject/settings/new/{id}")
        public String updateData(@PathVariable Long id, @RequestParam String name, @RequestParam String timeStart, @RequestParam String timeEnd, @RequestParam LocalDate data, @RequestParam Long auditorium, @RequestParam boolean additional_subject, Model model) {
        Subject subject = subjectRepository.findUserById(id);
        subject.setTimeStart(timeStart);
        subject.setTimeEnd(timeEnd);
        subject.setDate(data);
        subject.setAdditional_subject(additional_subject);
        subject.setAuditorium(auditorium);
        subject.setName(name);
        subjectRepository.save(subject);
        model.addAttribute("idMain", id);
        return "redirect:/subject/settings/{id}";
    }

    @PostMapping("/subject/delete/{id}")
    public String deleteChat(@PathVariable Long id) {
        Subject subject = subjectRepository.findUserById(id);
        subjectRepository.delete(subject);
        return "redirect:/";
    }


}
