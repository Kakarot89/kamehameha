package com.kakarot.lokacija.controllers;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kakarot.lokacija.entities.Lokacija;
import com.kakarot.lokacija.entities.User;
import com.kakarot.lokacija.repository.LokacijaRepository;
import com.kakarot.lokacija.repository.UserRepository;
import com.kakarot.lokacija.services.LokacijaService;
import com.kakarot.lokacija.utilly.EmailUtil;
import com.kakarot.lokacija.utilly.ReportUtil;

@Controller
public class LokacijaController {
	
	@Autowired
	LokacijaService lokacijaService;
	
	@Autowired
	EmailUtil emailUtil;

	@Autowired
	LokacijaRepository lokacijaRepository;
	
	@Autowired
	UserRepository userRepository;
	
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	ReportUtil reportUtil;
	
	
	@RequestMapping("/showCreate")
	public String showCreate()    // vraca JSP stranicu
	{
		return"createLocation";
	}
	
	@RequestMapping("/login")
	public String prikaziLogin()    // vraca JSP stranicu
	{
		return"login";
	}
	
	
	@RequestMapping("/showReg")
	public String prikaziRegistracionuStranicu()
	{
		return "registerUser";
	}
	
	@RequestMapping(value="/registerUser", method=RequestMethod.POST)
	public String register(@ModelAttribute("user") User user)
	{
		userRepository.save(user);
		return "login";
	}
	
	
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@RequestParam("email") String email,@RequestParam("password")String password, ModelMap model)    // Sa @RequestParam("email") smo 
	{                                                                                                                 // vezali name="email" iz login-a za parametar email u metodi
		User user = userRepository.findByEmail(email);
		if(user.getPassword().equals(password)) {         //  Poredimo getPassword iz Baze sa password koji smo prosledili (request) kao parametar
			return"createLocation";
		}else {
			model.addAttribute("poruka", "Pogresan unos Korisnickog imena ili sifre!");
		}
		return "login";
	}
	
	
	
	
	
	@RequestMapping("/saveLocation")  // action="" iz forme u jsp-u
	public String saveLocation(@ModelAttribute("lokacija") Lokacija lokacija, ModelMap model)  //Ovo u zagradi "lokacija" je Bean koji ce spring kontejner da preuzme 
	{                                                                                          // ModelAtribute je request, a ModelMap responce
		Lokacija locationSaved = lokacijaService.saveLocation(lokacija);
		String msg = "Lokacija snimljena sa id: " + locationSaved.getId();
		model.addAttribute("msg", msg);                                                       // Ovo "msg" je key u html-u (ide posle $-selektora)
		emailUtil.sendEmail("testspringboot50@gmail.com", "Lokacija Snimljena", "Lokacija je uspesno snimljena u bazu!");
		return "createLocation";                                   // Ovo return  createLocation ce kada se snime podaci u database da vrati updatovan createLocation.jsp 
	}
	
	
	
	
	
	@RequestMapping("/displayLocations")   // Kada user klikne na link(href="displayLocations") odradice ovum metodu
	public String displayLocations(ModelMap model)
	{
		List<Lokacija> locations = lokacijaService.getAllLocation();
		model.addAttribute("locations", locations);
		return "displayLocations";
	}
	
	@RequestMapping("deleteLocation")
	public String deleteLocation(@RequestParam("id") int id,ModelMap model)
	{
		Lokacija lokacija = new Lokacija();
		lokacija.setId(id);
		lokacijaService.deleteLocation(lokacija);
		List<Lokacija> lokacije = lokacijaService.getAllLocation();
		model.addAttribute("locations", lokacije);
//		Object locationById = lokacijaService.getLocationById(id);
//		lokacijaService.deleteLocation((Optional<Lokacija>) locationById);
		return "displayLocations";
	}
	
	@RequestMapping("/showUpdate")
	public String showUpdate(@RequestParam("id") int id, ModelMap model)
	{
		Lokacija location = lokacijaService.getLocationById(id);
		model.addAttribute("location", location);   // Ovaj objekat location se koristi u html-u updateLocation kao ${location.id} itd
		return "updateLocation";
	}
	
	@RequestMapping("/updateLocation")
	public String updateLocation(@ModelAttribute("lokacija") Lokacija lokacija, ModelMap model)
	{
		lokacijaService.updateLocation(lokacija);
		List<Lokacija> locations = lokacijaService.getAllLocation();
		model.addAttribute("locations", locations);
		return "displayLocations";
	}
	
	@RequestMapping("/generateReport")
	public String generateReport()
	{
		String path = servletContext.getRealPath("/");  // root directory
		List<Object[]> data = lokacijaRepository.findTypeAndTypeCount();
		reportUtil.generatedPieChart(path, data);    // U path smestamo sliku 
		return "report";
		
	}
	
}

