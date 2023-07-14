package com.example.Schedule.controllers;

import com.example.Schedule.models.Comment;
import com.example.Schedule.models.Note;
import com.example.Schedule.services.CommentService;
import com.example.Schedule.services.NoteService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class NoteAndCommentController {
    private final CommentService commentService;
    private final NoteService noteService;

    @PostMapping("/subject/{id}/comment/create")
    public String saveComment(Principal principal, Comment comment){
        commentService.saveComment(principal, comment);
        return"redirect:/subject/{id}";}

    @PostMapping("/subject/{id}/note/create")
    public String saveNote(Principal principal, Note note){
        noteService.saveNote(principal, note);
        return"redirect:/subject/{id}";}
}
