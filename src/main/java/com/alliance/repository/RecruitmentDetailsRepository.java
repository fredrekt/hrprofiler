package com.alliance.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.alliance.entity.RecruitmentDetails;

public interface RecruitmentDetailsRepository extends JpaRepository<RecruitmentDetails, Integer>{

	@Query(value = "SELECT * FROM recruitmentdetails WHERE YEAR(dateJobOffered)=?1", nativeQuery = true)
	List<RecruitmentDetails> findRecruitsByDate(int year);
}
