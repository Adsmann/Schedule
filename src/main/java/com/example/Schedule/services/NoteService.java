package com.example.Schedule.services;

import com.example.Schedule.models.Note;
import com.example.Schedule.models.User;
import com.example.Schedule.repositories.NoteRepository;
import com.example.Schedule.repositories.UseHelpRepository;
import com.example.Schedule.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.security.Principal;

@Service
@Slf4j
@RequiredArgsConstructor
public class NoteService {
    private final UserRepository userRepository;
    private final NoteRepository noteRepository;
    private final UseHelpRepository useHelpRepository;

    public void saveNote(Principal principal, Note note) {
        note.setUseHelp(useHelpRepository.findUseHelpById(getUserByPrincipal(principal).getId()));
        if (!note.getContents().isEmpty()){noteRepository.save(note);}
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }
}
