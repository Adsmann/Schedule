package com.example.Schedule.services;

import com.example.Schedule.models.UseHelp;
import com.example.Schedule.models.User;
import com.example.Schedule.models.enums.Role;
import com.example.Schedule.repositories.UseHelpRepository;
import com.example.Schedule.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final UseHelpRepository useHelpRepository;
    private final PasswordEncoder passwordEncoder;

    public void createUser(User user){
        if (userRepository.findByUsername(user.getUsername()) != null) return;
        user.setClas("Не выбрана");
        user.getRoles().add(Role.ROLE_USER);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        UseHelp useHelp = new UseHelp();
        useHelp.setUseId(user.getId());
        useHelp.setEmail(user.getEmail());
        useHelp.setClas("Не выбрана");
        useHelpRepository.save(useHelp);
        userRepository.save(user);
    }

    public List<User> list(){
        return userRepository.findAll();
    }





}
