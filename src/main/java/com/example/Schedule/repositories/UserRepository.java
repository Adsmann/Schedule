package com.example.Schedule.repositories;

import com.example.Schedule.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
    User findByUsername(String username);


    User findUserById(Long id);
}
