package com.kakarot.lokacija.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kakarot.lokacija.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);  // Ovo email je polje u Users, i automatski ce springdata da generise Users Query gde je email jednako 

}
