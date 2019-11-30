package com.ibm.ph.amperca.captchmvc.controller;

import java.util.HashSet;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ibm.ph.amperca.captchmvc.model.Role;
import com.ibm.ph.amperca.captchmvc.model.User;
import com.ibm.ph.amperca.captchmvc.repository.RoleRepository;
import com.ibm.ph.amperca.captchmvc.service.UserService;

@Controller
public class AccountController {

    @Autowired
    private RoleRepository roleRepository;
    
    @Autowired
    private UserService userService;

    @GetMapping("/signup")
    public String showSignUpForm(Model model) {
      User user = new User();
      user.setName("Charles");
      user.setEmail("email@email.com");
      user.setUserName("talbhoggs");
      user.setPassword("talbhoggs");
      model.addAttribute("user", user);
      return "signup";
    }
    
    @PostMapping("/signup/submit")
    public String submitSignUpForm(HttpServletRequest request,
        @ModelAttribute("user") @Valid User user, BindingResult result, Model model) {

      if (result.hasErrors()) {
        return "signup";
      }

      if (!user.getCaptcha()
          .equalsIgnoreCase((String) request.getSession().getAttribute("captchValueSession"))) {
        return "redirect:/signup?captchError=true";
      }

      Role userRole = roleRepository.findByRoleName("USER");
      HashSet<Role> roles = new HashSet<>();
      roles.add(userRole);
      user.setRoles(roles);

      userService.saveUser(user);

      return "redirect:/login";
    }
}
