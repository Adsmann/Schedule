package com.example.Schedule.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.*;

@Entity
@Table(name = "Subject")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "timeStart")
    private String timeStart;
    @Column(name = "timeEnd")
    private String timeEnd;
    @Column(name = "data")
    private LocalDate date;
    @Column(name = "additional_subject")
    private boolean additional_subject;
    @Column(name = "auditorium")
    private Long auditorium;

    @OneToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER, mappedBy = "subject")
    private List<Comment> comment = new ArrayList<>();
    @OneToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER, mappedBy = "subject")
    private List<Note> note = new ArrayList<>();
    @OneToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER, mappedBy = "subject")
    private List<Notification> notification = new ArrayList<>();
}