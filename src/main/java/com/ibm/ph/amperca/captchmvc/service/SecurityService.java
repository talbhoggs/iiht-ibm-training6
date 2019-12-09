package com.ibm.ph.amperca.captchmvc.service;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

@Service
public interface SecurityService {
    boolean authenticate(String username, String password);
    Authentication invalidate();
}
