package com.ibm.ph.amperca.captchmvc.service;

import com.ibm.ph.amperca.captchmvc.model.User;

public interface UserService {
    User saveUser( User user);
    User updateUser( User user);
    User getUserById(Long id);
    void deleteUser(User user);
    boolean isExistingEmail(String mail);
    boolean isExistingUsername(String name);
    User findByUserName(String name);
    User findByUserId(String id);
}
