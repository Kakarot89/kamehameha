package com.kakarot.lokacija.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kakarot.lokacija.entities.Lokacija;

@Repository
public interface LokacijaRepository extends JpaRepository<Lokacija, Integer> {

	@Query(value="select type,count(type) from Lokacija group by type")   // Linija koda iz baze,podaci po type (tipovima grad-selo)
	public List<Object[]> findTypeAndTypeCount();      // smesta tipove u objekat       // Hibernate ce ovo da konvertuje u database Query

	
}
