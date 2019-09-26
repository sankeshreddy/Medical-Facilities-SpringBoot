package trg.talentsprint.starterkit.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import trg.talentsprint.starterkit.model.City;

import trg.talentsprint.starterkit.model.Category;


public interface CityRespository extends CrudRepository<City, Integer>{
	
	//public List<City> findByCityname(String cityname);

	
}
