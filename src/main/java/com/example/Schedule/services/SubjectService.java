package com.example.Schedule.services;

import com.example.Schedule.models.Subject;
import com.example.Schedule.repositories.SubjectRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class SubjectService {
    private final SubjectRepository subjectRepository;

    public void saveSubject(Subject subject) {
        log.info("Saving new {}", subject);
        subjectRepository.save(subject);
    }

    public List<Subject> listSubject() {
        return subjectRepository.findAll();
    }
}
