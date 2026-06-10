package com.example.project1.repository;


import com.example.project1.Entity.UserEntity;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {

    Optional<UserEntity> findByEmailAndPasswordAndRole(
            String email,
            String password,
            String role
    );
}