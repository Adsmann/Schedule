package com.example.Schedule.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "UseHelp")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UseHelp {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "email")
    private String email;
    @Column(name = "clas")
    private String clas;
    @Column(name = "useId")
    private Long useId;
    @OneToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private List<Comment> comment = new ArrayList<>();
    @OneToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private List<Note> note = new ArrayList<>();
    @OneToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private List<Notification> notification = new ArrayList<>();

}
