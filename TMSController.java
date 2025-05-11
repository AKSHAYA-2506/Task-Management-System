package com.klu.Project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TMSController {

    @GetMapping("/Home")
    public String HomePage() {
        return "Home"; // Corresponds to home.html
    }

    @GetMapping("/Task")
    public String Task() {
        return "Task"; // Corresponds to home.html
    }

    @GetMapping("/AboutUs")
    public String aboutPage() {
        return "AboutUs"; // Corresponds to about.html
    }

    @GetMapping("/ContactUs")
    public String ContactPage() {
        return "ContactUs"; // Corresponds to contact.html
    }

    @GetMapping("/Login")
    public String LoginPage() {
        return "Login"; // Corresponds to login.html
    }
    @GetMapping("/Register")
    public String RegisterPage() {
        return "Register"; // Corresponds to login.html
    }
    @GetMapping("/dashboard")
    public String getDashboard() {
        return "dashboard"; // Looks for dashboard.html in templates/
    }
}

