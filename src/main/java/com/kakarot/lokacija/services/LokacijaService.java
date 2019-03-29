package com.kakarot.lokacija.services;

import java.util.List;
import com.kakarot.lokacija.entities.Lokacija;


public interface LokacijaService {

	Lokacija saveLocation(Lokacija lokacija);

	Lokacija updateLocation(Lokacija lokacija);

	void deleteLocation(Lokacija lokacija);

	Lokacija getLocationById(int id);

	List<Lokacija> getAllLocation();

}
