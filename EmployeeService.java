package com.klu.Project;

//EmployeeService.java

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {
 private final EmployeeRepository repo;

 public EmployeeService(EmployeeRepository repo) {
     this.repo = repo;
 }

 public List<Employee> getAllEmployees() {
     return repo.findAll();
 }

 public void deleteEmployee(Long id) {
     repo.deleteById(id);
 }
}
