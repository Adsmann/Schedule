package com.example.Schedule.repositories;

import com.example.Schedule.models.Subject;
import com.example.Schedule.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SubjectRepository extends JpaRepository<Subject, Long> {
    Subject findUserById(Long id);
}
