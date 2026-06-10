package com.example.project1.service;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



import com.example.project1.Entity.UserEntity;
import com.example.project1.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;

@Service
public class RegistrationService {

    @Autowired
    private static UserRepository UserRepository;

    public static UserEntity registerUser(String fullname, String email, String password,
                                    String bloodgroup, String city, String phone,
                                    String lastDonationDate) {
        if (UserRepository.existsByEmail(email)) {
            throw new RuntimeException("Email already registered");
        }

        UserEntity user = new UserEntity();
        user.setFullName(fullname);
        user.setEmail(email);
        user.setPassword(password);
        user.setBloodGroup(bloodgroup);
        user.setCity(city);
        user.setPhone(phone);
        user.setRole("USER");

        if (lastDonationDate != null && !lastDonationDate.isEmpty()) {
            user.setLastDonationDate(Date.valueOf(lastDonationDate));
        } else {
            user.setLastDonationDate(null);
        }

        return UserRepository.save(user);
    }
}
