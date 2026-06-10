package com.example.project1.rest.controller;


import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



import com.example.project1.Entity.UserEntity;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.*;

import java.util.HashMap;

import java.util.Map;

import java.util.Optional;

@RestController

@RequestMapping("/api")

public class LoginRestController {

    @Autowired

    private UserService userService;

    @PostMapping("/login")

    public ResponseEntity<?> login(

            @RequestParam String email,

            @RequestParam String password,

            @RequestParam String role,

            HttpSession session) {

        Optional<UserEntity> userOpt = userService.validateUser(email, password, role);

        if (userOpt.isPresent()) {

            UserEntity user = userOpt.get();

            session.setAttribute("name", user.getFullName());

            session.setAttribute("bloodGroup", user.getBloodGroup());

            session.setAttribute("email", user.getEmail());

            session.setAttribute("role", user.getRole());

            session.setAttribute("loggedInUser", user);

            Map<String, Object> response = new HashMap<>();

            response.put("success", true);

            response.put("user", user);

            response.put("redirect", "ADMIN".equalsIgnoreCase(user.getRole()) ? "/admin_dashboard" : "/userdashboard");

            return ResponseEntity.ok(response);

        }

        Map<String, Object> error = new HashMap<>();

        error.put("success", false);

        error.put("error", "Invalid credentials");

        return ResponseEntity.status(401).body(error);

    }

    @GetMapping("/me")

    public ResponseEntity<?> getCurrentUser(HttpSession session) {

        UserEntity user = (UserEntity) session.getAttribute("loggedInUser");

        if (user != null) {

            return ResponseEntity.ok(user);

        }

        return ResponseEntity.status(401).body(Map.of("error", "Not logged in"));

    }

}

