package com.portfolio.rohit.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Column;

import java.io.Serial;
import java.io.Serializable;

@Entity
public class Engineer implements Serializable {

    @Serial
    private static final long serialVersionUID = -4258392267221190600L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    public String getName() {
        return name;
    }

    @Column(nullable = false)
    private String name;
}
