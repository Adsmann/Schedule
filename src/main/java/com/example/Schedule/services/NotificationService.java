package com.example.Schedule.services;

import com.example.Schedule.models.Notification;
import com.example.Schedule.models.User;
import com.example.Schedule.repositories.NotificationRepository;
import com.example.Schedule.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class NotificationService {
    private final UserRepository userRepository;
    private final NotificationRepository notificationRepository;

    public void saveNotification(Principal principal, Notification notification) {
        notification.setUser(getUserByPrincipal(principal));
        notificationRepository.save(notification);
    }

    public List<Notification> listNotification() {
        return notificationRepository.findAll();
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }
}
