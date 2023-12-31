package com.example.Schedule.repositories;

import com.example.Schedule.models.Subject;
import com.example.Schedule.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
    User findByUsername(String username);

    User findUserById(Long id);
}
