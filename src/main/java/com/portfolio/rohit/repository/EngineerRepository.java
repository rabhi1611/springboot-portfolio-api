package com.portfolio.rohit.repository;

import com.portfolio.rohit.entity.Engineer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EngineerRepository extends JpaRepository<Engineer, Integer> {
}
