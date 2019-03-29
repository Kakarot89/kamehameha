package com.kakarot.lokacija.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kakarot.lokacija.entities.Lokacija;
import com.kakarot.lokacija.repository.LokacijaRepository;

@RestController
@RequestMapping("/locations")
public class LokacijaRESTController {
	
	@Autowired
	LokacijaRepository lokacijaRepository;   // Ako hocemo da vrsimo neka izracunavanja importujemo LokacijaRepository
	
	
	@GetMapping                                          // Vezuje HTTP GET metod sa nasom getLocations metodm
	public List<Lokacija> getLocations()
	{
		return lokacijaRepository.findAll();
	}

	@PostMapping                                           // Ovo ce vezati metod POST za nasu metodu createLocation.
	public Lokacija createLocation(@RequestBody Lokacija location)
	{
		return lokacijaRepository.save(location);
	}
	
	
	@PutMapping                                            // Ovo ce vezati metod POST za nasu metodu createLocation.
	public Lokacija updateLocation(@RequestBody Lokacija location)
	{
		return lokacijaRepository.save(location);
	}
	
	@DeleteMapping("/{id}")                                 // Ovo /{id} je path varijabla i mapiramo je sa nasom metodom      
	public void deleteLocation(@PathVariable("id") int id)
	{
		lokacijaRepository.deleteById(id);
	}
	
	@GetMapping("/{id}")
	public Optional<Lokacija> getLocation(@PathVariable ("id") int id)
	{
		return lokacijaRepository.findById(id);
	}
	
}
