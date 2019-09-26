package trg.talentsprint.starterkit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import trg.talentsprint.starterkit.model.City;
import trg.talentsprint.starterkit.repository.CityRespository;

@Service
@Transactional
public class CityService {

	@Autowired
	CityRespository cityRepo;
	
	public List<City> showAllCity(){
		
		List<City> citylist = new ArrayList<>();
		for (City c2 : cityRepo.findAll()) {
			citylist.add(c2);
		}
		return citylist;
		
	}
	
	public City findById(int id) {
		
		return cityRepo.findById(id).get();
		
		
	}
}
