package com.alliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.alliance.entity.Employee;
import com.alliance.entity.RecruitmentDetails;

public interface ChartManager extends JpaRepository<RecruitmentDetails, Integer> {
	
	@Query(value="SELECT * FROM recruitmentdetails where YEAR(dateJobOffered) =?1",nativeQuery=true)
	public void displayDateHired(int i);

}
