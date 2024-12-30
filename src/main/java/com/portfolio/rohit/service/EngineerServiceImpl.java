package com.portfolio.rohit.service;

import com.portfolio.rohit.dto.EngineerDto;
import com.portfolio.rohit.entity.Engineer;
import com.portfolio.rohit.repository.EngineerRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EngineerServiceImpl implements EngineerService {

    private final EngineerRepository engineerRepository;

    EngineerServiceImpl(EngineerRepository engineerRepository) {
        this.engineerRepository = engineerRepository;
    }

    @Override
    public EngineerDto getDetails() {
        Optional<Engineer> engineer = engineerRepository.findById(1);
        return engineer.map(value -> EngineerDto.builder().name(value.getName()).build()).orElse(null);
    }
}
