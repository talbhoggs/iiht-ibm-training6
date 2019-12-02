package com.ibm.ph.amperca.captchmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ibm.ph.amperca.captchmvc.model.User;

@Controller
public class LoginController {

    @GetMapping("/about")
    public String about(Model model) {
        return "about";
    }

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "login";
    }

    @PostMapping("/login/submit")
    public String submitSignUpForm(@RequestParam("userName") String username,
        @RequestParam("password") String password, @RequestParam("captcha") String captcha,
        HttpServletRequest request, ModelMap modelMap) {

      if (username.trim().isEmpty() || password.trim().isEmpty()) {
        return "redirect:/login?error=true";
      }

      if (!captcha
          .equalsIgnoreCase((String) request.getSession().getAttribute("captchValueSession"))) {
        return "redirect:/login?captchError=true";
      }

      /*boolean isAuthenticated = securityService.authenticate(username, password);

      if (isAuthenticated) {
        return "redirect:/main";
      }
      */

      return "redirect:/login?error=true";
    }

    @GetMapping("/main")
    public String main(Model model) {
        return "main";
    }

    @GetMapping("/admin/main")
    public String adminPage() {
      return "admin";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {
      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
      if (auth != null) {
        auth.setAuthenticated(false);
        new SecurityContextLogoutHandler().logout(request, response, auth);
      }
      return "redirect:/login?logout";
    }

    @GetMapping("/access-denied")
    public String accessDeniedPage(HttpServletRequest request, HttpServletResponse response) {
      return "redirect:/error";
    }

}
