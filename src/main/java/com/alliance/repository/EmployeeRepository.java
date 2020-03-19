package com.alliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.alliance.entity.Employee;

import java.util.List;

@SuppressWarnings("unused")
public interface EmployeeRepository extends JpaRepository<Employee, Integer>{
	

	@Query(value = "SELECT * FROM employee WHERE gender=:gender", nativeQuery = true)
    List<Employee> findEmployeesByGender(@Param("gender") String gender);

	@Query(value = "SELECT * FROM employee WHERE gender='male'", nativeQuery = true)
	List<Employee> findAllByOrderByGenderAsc();
	
	@Query(value = "SELECT * FROM employee WHERE gender='female'", nativeQuery = true)
	List<Employee> findAllByOrderByGenderFemale();
	

}
