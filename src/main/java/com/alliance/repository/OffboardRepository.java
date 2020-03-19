package com.alliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.alliance.entity.OffboardingDetails;


public interface OffboardRepository extends JpaRepository<OffboardingDetails, Integer>{

}