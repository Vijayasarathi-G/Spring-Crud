package com.springrest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.springrest.bean.UserRole;

public interface UserRoleRepository extends JpaRepository<UserRole, Long>{
	

}
