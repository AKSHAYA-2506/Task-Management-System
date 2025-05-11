package com.klu.Project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RestController
@CrossOrigin(origins = "http://localhost:9000")
@RequestMapping("/api/employees") 
public class ManagerController {

    @Autowired
    private ManagerService managerService;

    @GetMapping("/view-managers")
    public String viewAllManagers(Model model) {
        List<Manager> managers = managerService.getAllManagers();
        model.addAttribute("managers", managers);
        return "view-managers";
    }

    @GetMapping("/delete-manager/{id}")
    public String deleteManager(@PathVariable Long id) {
        managerService.deleteManagerById(id);
        return "redirect:/view-managers";
    }
}
