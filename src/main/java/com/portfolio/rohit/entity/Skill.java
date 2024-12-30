package com.portfolio.rohit.entity;

import jakarta.persistence.*;
import lombok.Getter;

import java.io.Serial;
import java.io.Serializable;

@Getter
@Entity
public class Skill implements Serializable {

    @Serial
    private static final long serialVersionUID = -6258392267221190600L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer skillId;

    @Column(nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(name = "id", nullable = false)
    private Engineer engineer;
}