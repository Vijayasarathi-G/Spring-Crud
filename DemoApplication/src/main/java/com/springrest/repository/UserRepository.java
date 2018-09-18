package com.springrest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.springrest.bean.User;

public interface UserRepository extends JpaRepository<User, Long>{

	@Query(value = "SELECT u.id FROM user u where u.user_name = ?1", nativeQuery = true)
    int findUserIdByName(String username);
}
