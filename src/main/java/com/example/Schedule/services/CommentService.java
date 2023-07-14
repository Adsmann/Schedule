package com.example.Schedule.services;

import com.example.Schedule.models.Comment;
import com.example.Schedule.models.User;
import com.example.Schedule.repositories.CommentRepository;
import com.example.Schedule.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.security.Principal;

@Service
@Slf4j
@RequiredArgsConstructor
public class CommentService {
    private final UserRepository userRepository;
    private final CommentRepository commentRepository;

    public void saveComment(Principal principal, Comment comment) {
        comment.setUser(getUserByPrincipal(principal));
        commentRepository.save(comment);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }
}
