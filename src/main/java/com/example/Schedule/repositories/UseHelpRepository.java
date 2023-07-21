package com.example.Schedule.repositories;


import com.example.Schedule.models.UseHelp;
import com.example.Schedule.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UseHelpRepository extends JpaRepository<UseHelp, Long> {
    UseHelp findUseHelpById(Long id);
}
