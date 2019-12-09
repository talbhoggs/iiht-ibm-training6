package com.ibm.ph.amperca.captchmvc.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.ibm.ph.amperca.captchmvc.model.User;

public interface UserRepository extends CrudRepository<User, Long> {

    public User findByEmail(String email);

    @Query("SELECT t FROM User t where t.userName = :name")
    public User findByUserName(@Param("name") String name);

}
