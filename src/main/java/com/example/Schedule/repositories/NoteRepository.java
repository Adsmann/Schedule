package com.example.Schedule.repositories;


import com.example.Schedule.models.Note;
import com.example.Schedule.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NoteRepository extends JpaRepository<Note, Long> {

}
