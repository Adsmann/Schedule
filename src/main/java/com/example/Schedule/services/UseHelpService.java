package com.example.Schedule.services;

import com.example.Schedule.models.Subject;
import com.example.Schedule.models.UseHelp;
import com.example.Schedule.repositories.UseHelpRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@Slf4j
@RequiredArgsConstructor
public class UseHelpService {
    private final UseHelpRepository useHelpRepository;
    public List<UseHelp> listUseHelp() {
        return useHelpRepository.findAll();
    }
}
