package com.example.project1.service;



import com.example.project1.Entity.UserEntity;
import com.example.project1.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public UserEntity validateUser(String email, String password, String role) {
        return userRepository.findByEmailAndPasswordAndRole(email, password, role);
    }
}
