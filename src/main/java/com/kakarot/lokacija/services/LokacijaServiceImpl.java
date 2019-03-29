package com.kakarot.lokacija.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kakarot.lokacija.entities.Lokacija;
import com.kakarot.lokacija.repository.LokacijaRepository;

@Service
public class LokacijaServiceImpl implements LokacijaService {
	
	@Autowired
	private LokacijaRepository lokacijaRepository;      // add Dependecy in runtime

	@Override
	public Lokacija saveLocation(Lokacija lokacija) {
		return lokacijaRepository.save(lokacija);
	}

	@Override
	public Lokacija updateLocation(Lokacija lokacija) {
		return lokacijaRepository.save(lokacija);
	}

	@Override
	public void deleteLocation(Lokacija lokacija) {
		lokacijaRepository.delete(lokacija);

	}

	@Override
	public Lokacija getLocationById(int id) {
		return lokacijaRepository.getOne(id);
	}

	@Override
	public List<Lokacija> getAllLocation() {
		return lokacijaRepository.findAll();
	}

	public LokacijaRepository getLokacijaRepository() {
		return lokacijaRepository;
	}

	public void setLokacijaRepository(LokacijaRepository lokacijaRepository) {
		this.lokacijaRepository = lokacijaRepository;
	}

}
