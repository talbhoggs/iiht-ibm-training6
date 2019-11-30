package com.ibm.ph.amperca.captchmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.ibm.ph.amperca.captchmvc.model.User;
import com.ibm.ph.amperca.captchmvc.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
    
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    public User saveUser(User user) {
      user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
      return userRepository.save(user);
    }

    public User getUserById(Long id) {
      return userRepository.findById(id).orElse(null);
    }

    public void deleteUser(User user) {
      userRepository.delete(user);
    }

    public boolean isExistingEmail(String mail) {
      User user = userRepository.findByEmail(mail);
      return (user != null ? true : false);
    }

    @Override
    public boolean isExistingUsername(String name) {
      User user = userRepository.findByEmail(name);
      return (user != null ? true : false);
    }

    @Override
    public User findByUserName(String name) {
      return userRepository.findByUserName(name);
    }

    @Override
    public User findByUserId(String id) {
      return userRepository.findById(Long.valueOf(id)).get();
    }

    @Override
    public User updateUser(User user) {
      user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
      return userRepository.save(user);
    }

}
