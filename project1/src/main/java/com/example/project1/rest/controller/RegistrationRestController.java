package com.example.project1.rest.controller;

import com.example.project1.Entity.UserEntity;
import com.example.project1.service.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/register")
public class RegistrationRestController {

    @Autowired
    private RegistrationService registrationService;

    @PostMapping
    public ResponseEntity<Map<String, Object>> registerUser(
            @RequestParam String fullname,
            @RequestParam String email,
            @RequestParam String password,
            @RequestParam String bloodgroup,
            @RequestParam String city,
            @RequestParam(required = false) String lastDonationDate,
            @RequestParam String phone) {

        Map<String, Object> response = new HashMap<>();

        try {

            UserEntity user = registrationService.registerUser(
                    fullname,
                    email,
                    password,
                    bloodgroup,
                    city,
                    phone,
                    lastDonationDate
            );

            response.put("success", true);
            response.put("message", "User registered successfully");
            response.put("userId", user.getId());

            return ResponseEntity.ok(response);

        } catch (RuntimeException e) {

            response.put("success", false);
            response.put("message", e.getMessage());

            return ResponseEntity.badRequest().body(response);
        }
    }
}