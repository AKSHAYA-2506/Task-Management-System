package com.klu.Project;

//EmployeeController.java

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/employees")
@CrossOrigin(origins = "") // Allow frontend to call this API
public class EmployeeController {
 private final EmployeeService service;

 public EmployeeController(EmployeeService service) {
     this.service = service;
 }

 @GetMapping
 public List<Employee> getAllEmployees() {
     return service.getAllEmployees();
 }

 @DeleteMapping("/{id}")
 public void deleteEmployee(@PathVariable Long id) {
     service.deleteEmployee(id);
 }
}
